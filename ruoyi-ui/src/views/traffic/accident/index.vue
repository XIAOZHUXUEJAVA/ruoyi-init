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
      <el-form-item label="所属城市" prop="cityName">
        <el-input
          v-model="queryParams.cityName"
          placeholder="请输入所属城市"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="事故地址" prop="accidentAddress">
        <el-input
          v-model="queryParams.accidentAddress"
          placeholder="请输入事故地址"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="状态" prop="status">
        <el-input
          v-model="queryParams.status"
          placeholder="请输入状态 "
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
          v-hasPermi="['traffic:accident:add']"
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
          v-hasPermi="['traffic:accident:edit']"
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
          v-hasPermi="['traffic:accident:remove']"
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
          v-hasPermi="['traffic:accident:export']"
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
      :data="accidentList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="交通事件编号" align="center" prop="accidentId" />
      <el-table-column label="所属城市" align="center" prop="cityName" />
      <el-table-column label="事件描述" align="center" prop="description" />
      <el-table-column label="事故地址" align="center" prop="accidentAddress" />
      <el-table-column label="状态" align="center" prop="status">
        <template slot-scope="scope">
          <el-tag :type="scope.row.status === '0' ? 'success' : 'danger'">
            {{ scope.row.status === "0" ? "已处理" : "未处理" }}
          </el-tag>
        </template>
      </el-table-column>
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
            @click="handleTrafficAccident(scope.row)"
            v-hasPermi="['traffic:accident:edit']"
            >处理</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['traffic:accident:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['traffic:accident:remove']"
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

    <!-- 添加或修改交通事件对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="所属城市" prop="cityName">
          <el-input v-model="form.cityName" placeholder="请输入所属城市" />
        </el-form-item>
        <el-form-item label="事件描述" prop="description">
          <el-input
            v-model="form.description"
            type="textarea"
            placeholder="请输入内容"
          />
        </el-form-item>
        <el-form-item label="事故地址" prop="accidentAddress">
          <el-input
            v-model="form.accidentAddress"
            placeholder="请输入事故地址"
          />
        </el-form-item>
        <el-form-item label="状态" prop="status">
          <!-- <el-input v-model="form.status" placeholder="请输入状态" /> -->
          <el-switch
            v-model="form.status"
            :active-value="'0'"
            :inactive-value="'1'"
            active-text="已处理"
            inactive-text="未处理"
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
      :visible.sync="showMap"
      width="1400px"
      append-to-body
    >
      <traffic-accident
        @update-list="updateList"
        :address="this.address"
        :count="this.count"
        :accident="this.updateStatusForm"
      ></traffic-accident>
    </el-dialog>
  </div>
</template>

<script>
import {
  listAccident,
  getAccident,
  delAccident,
  addAccident,
  updateAccident,
} from "@/api/traffic/accident";

import TrafficAccident from "../../../components/BaiduMap/TrafficAccident.vue";
export default {
  name: "Accident",
  components: { TrafficAccident },
  data() {
    return {
      updateStatusForm: {
        accidentId: null,
        cityName: null,
        description: null,
        accidentAddress: null,
        status: null,
        recordDate: null,
      },
      count: 0,
      address: {
        lng: null,
        lat: null,
      },
      showMap: false,
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
      // 交通事件表格数据
      accidentList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        cityName: null,
        description: null,
        accidentAddress: null,
        status: null,
        recordDate: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {},
    };
  },
  created() {
    this.getList();
  },
  methods: {
    updateList(success) {
      if (success === "success") {
        console.log("test");
        this.getList();
      }
    },
    handleTrafficAccident(row) {
      // console.log(row);
      this.updateStatusForm = {
        accidentId: row.accidentId,
        cityName: row.cityName,
        description: row.description,
        accidentAddress: row.accidentAddress,
        status: row.status,
        recordDate: row.recordDate,
      };
      // console.log(this.updateStatusForm);
      this.count = this.count + 1;
      var myGeo = new BMapGL.Geocoder();
      // 将地址解析结果显示在地图上，并调整地图视野
      myGeo.getPoint(
        row.accidentAddress,
        (point) => {
          // 箭头函数保留了'this'上下文
          if (point) {
            this.address = {
              lng: point.lng,
              lat: point.lat,
            };
            this.showMap = true;
          } else {
            alert("您选择的地址没有解析到结果！");
          }
        },
        "北京市"
      );
    },
    /** 查询交通事件列表 */
    getList() {
      this.loading = true;
      listAccident(this.queryParams).then((response) => {
        this.accidentList = response.rows;
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
        accidentId: null,
        cityName: null,
        description: null,
        accidentAddress: null,
        status: null,
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
      this.ids = selection.map((item) => item.accidentId);
      this.single = selection.length !== 1;
      this.multiple = !selection.length;
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加交通事件";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const accidentId = row.accidentId || this.ids;
      getAccident(accidentId).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改交通事件";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.accidentId != null) {
            updateAccident(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addAccident(this.form).then((response) => {
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
      const accidentIds = row.accidentId || this.ids;
      this.$modal
        .confirm('是否确认删除交通事件编号为"' + accidentIds + '"的数据项？')
        .then(function () {
          return delAccident(accidentIds);
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
        "traffic/accident/export",
        {
          ...this.queryParams,
        },
        `accident_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>
