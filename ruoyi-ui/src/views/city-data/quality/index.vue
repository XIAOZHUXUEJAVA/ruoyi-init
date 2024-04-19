<template>
  <div class="app-container">
    <el-form
      :model="queryParams"
      ref="queryForm"
      size="small"
      :inline="true"
      v-show="showSearch"
      label-width="68px"
    >
      <el-form-item label="城市名称" prop="cityName">
        <el-input
          v-model="queryParams.cityName"
          placeholder="请输入城市名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="空气质量指数" prop="airQuality">
        <el-input
          v-model="queryParams.airQuality"
          placeholder="请输入空气质量指数"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="噪音水平" prop="noiseLevel">
        <el-input
          v-model="queryParams.noiseLevel"
          placeholder="请输入噪音水平"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="污染物排放情况" prop="pollutantEmission">
        <el-input
          v-model="queryParams.pollutantEmission"
          placeholder="请输入污染物排放情况"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="记录日期" prop="recordDate">
        <el-date-picker
          clearable
          v-model="queryParams.recordDate"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择记录日期"
        >
        </el-date-picker>
      </el-form-item>
      <el-form-item>
        <el-button
          type="primary"
          icon="el-icon-search"
          size="mini"
          @click="handleQuery"
          >搜索</el-button
        >
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery"
          >重置</el-button
        >
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['city-data:quality:add']"
          >新增</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['city-data:quality:edit']"
          >修改</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['city-data:quality:remove']"
          >删除</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['city-data:quality:export']"
          >导出</el-button
        >
      </el-col>
      <right-toolbar
        :showSearch.sync="showSearch"
        @queryTable="getList"
      ></right-toolbar>
    </el-row>

    <el-table
      v-loading="loading"
      :data="qualityList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="记录编号" align="center" prop="envId" />
      <el-table-column label="城市名称" align="center" prop="cityName" />
      <el-table-column label="空气质量指数" align="center" prop="airQuality" />
      <el-table-column label="噪音水平" align="center" prop="noiseLevel" />
      <el-table-column
        label="污染物排放情况"
        align="center"
        prop="pollutantEmission"
      />
      <el-table-column
        label="记录日期"
        align="center"
        prop="recordDate"
        width="180"
      >
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.recordDate, "{y}-{m}-{d}") }}</span>
        </template>
      </el-table-column>
      <el-table-column
        label="操作"
        align="center"
        class-name="small-padding fixed-width"
      >
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleGPT(scope.row)"
            >决策</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleVisual(scope.row)"
            >可视化</el-button
          >

          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['city-data:quality:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['city-data:quality:remove']"
            >删除</el-button
          >
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total > 0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改城市环境质量对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="城市名称" prop="cityName">
          <el-input v-model="form.cityName" placeholder="请输入城市名称" />
        </el-form-item>
        <el-form-item label="空气质量指数" prop="airQuality">
          <el-input
            v-model="form.airQuality"
            placeholder="请输入空气质量指数"
          />
        </el-form-item>
        <el-form-item label="噪音水平" prop="noiseLevel">
          <el-input v-model="form.noiseLevel" placeholder="请输入噪音水平" />
        </el-form-item>
        <el-form-item label="污染物排放情况" prop="pollutantEmission">
          <el-input
            v-model="form.pollutantEmission"
            placeholder="请输入污染物排放情况"
          />
        </el-form-item>
        <el-form-item label="记录日期" prop="recordDate">
          <el-date-picker
            clearable
            v-model="form.recordDate"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择记录日期"
          >
          </el-date-picker>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
    <el-dialog
      :title="title"
      :visible.sync="showVisual"
      width="1000px"
      append-to-body
    >
      <env-component :data="selectedRowData"></env-component>
    </el-dialog>
    <el-dialog
      :title="title"
      :visible.sync="showGPT"
      width="1000px"
      height="600px"
      append-to-body
    >
      <g-p-t-generate :prompt="selectedPrompt"></g-p-t-generate>
    </el-dialog>
  </div>
</template>

<script>
import {
  listQuality,
  getQuality,
  delQuality,
  addQuality,
  updateQuality,
} from "@/api/city-data/quality";
import EnvComponent from "../../../components/Visual/EnvComponent.vue";
import GPTGenerate from "../../../components/GPT/GPTGenerate.vue";

export default {
  name: "Quality",
  data() {
    return {
      showGPT: false,
      selectedPrompt: "",
      selectedRowData: null,
      showVisual: false,
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 城市环境质量表格数据
      qualityList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        cityName: null,
        airQuality: null,
        noiseLevel: null,
        pollutantEmission: null,
        recordDate: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {},
    };
  },
  components: { EnvComponent, GPTGenerate },
  created() {
    this.getList();
  },
  methods: {
    handleGPT(row) {
      this.showGPT = true;
      this.selectedPrompt =
        `针对 ${row.cityName} 的环境情况，根据数据分析，空气质量指数为 ${row.airQuality}AQI，噪音水平为 ${row.noiseLevel}分贝，污染物排放情况为 ${row.pollutantEmission}。请就以上数据，提出以下建议和决策：\n\n` +
        `1. 城市居民今日出行建议\n` +
        `2. 政策建议\n` +
        `3. 具体措施`;
    },
    handleVisual(row) {
      this.showVisual = true;
      this.selectedRowData = row;
    },
    /** 查询城市环境质量列表 */
    getList() {
      this.loading = true;
      listQuality(this.queryParams).then((response) => {
        this.qualityList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        envId: null,
        cityName: null,
        airQuality: null,
        noiseLevel: null,
        pollutantEmission: null,
        recordDate: null,
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map((item) => item.envId);
      this.single = selection.length !== 1;
      this.multiple = !selection.length;
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加城市环境质量";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const envId = row.envId || this.ids;
      getQuality(envId).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改城市环境质量";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.envId != null) {
            updateQuality(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addQuality(this.form).then((response) => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const envIds = row.envId || this.ids;
      this.$modal
        .confirm('是否确认删除城市环境质量编号为"' + envIds + '"的数据项？')
        .then(function () {
          return delQuality(envIds);
        })
        .then(() => {
          this.getList();
          this.$modal.msgSuccess("删除成功");
        })
        .catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download(
        "city-data/quality/export",
        {
          ...this.queryParams,
        },
        `quality_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>
