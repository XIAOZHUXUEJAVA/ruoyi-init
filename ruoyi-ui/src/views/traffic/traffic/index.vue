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
          v-hasPermi="['traffic:traffic:add']"
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
          v-hasPermi="['traffic:traffic:edit']"
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
          v-hasPermi="['traffic:traffic:remove']"
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
          v-hasPermi="['traffic:traffic:export']"
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
      :data="trafficList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="城市ID" align="center" prop="cityId" />
      <el-table-column label="城市名称" align="center" prop="cityName" />
      <el-table-column label="路况描述" align="center" prop="description" />
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
            @click="showTrafficMap(scope.row)"
            v-hasPermi="['traffic:traffic:edit']"
            >交通实况</el-button
          >

          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="showTrafficDetail(scope.row)"
            v-hasPermi="['traffic:traffic:edit']"
            >查看详情</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['traffic:traffic:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['traffic:traffic:remove']"
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

    <!-- 添加或修改路况检测对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="城市名称" prop="cityName">
          <el-input v-model="form.cityName" placeholder="请输入城市名称" />
        </el-form-item>
        <el-form-item label="路况描述" prop="description">
          <el-input
            v-model="form.description"
            type="textarea"
            placeholder="请输入内容"
          />
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
      width="1450px"
      height="900px"
      append-to-body
    >
      <traffic-map :cityName="cityName"></traffic-map>
    </el-dialog>
    <el-dialog
      :title="trafficTitle"
      :visible.sync="showDetail"
      width="60%"
      height="80%"
      append-to-body
    >
      <div class="dialog-content">
        <el-input
          v-model="cityName"
          :disabled="true"
          class="input-field"
          style="padding-bottom: 20px"
        ></el-input>

        <el-input
          v-model="roadName"
          placeholder="请输入道路名称"
          class="input-field"
          style="padding-bottom: 20px"
        ></el-input>
        <el-button
          type="primary"
          plain
          icon="el-icon-search"
          size="mini"
          @click="searchRoadDetail"
          >查询</el-button
        >

        <div class="result">
          <p class="result-header">{{ cityName }} {{ roadName }} 道路状况</p>

          <el-input
            type="textarea"
            :rows="4"
            placeholder="道路状况"
            v-model="trafficDetail.description"
          >
          </el-input>
        </div>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {
  listTraffic,
  getTraffic,
  delTraffic,
  addTraffic,
  updateTraffic,
} from "@/api/traffic/traffic";
import axios from "axios";
import TrafficMap from "../../../components/BaiduMap/TrafficMap.vue";

export default {
  name: "Traffic",
  data() {
    return {
      trafficTitle: "道路详情查询",
      showDetail: false,
      cityName: "",
      roadName: "",
      trafficDetail: {},
      showMap: false,
      trafficData: {
        cityId: null,
        cityName: null,
        description: null,
      },
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
      // 路况检测表格数据
      trafficList: [],
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
  components: { TrafficMap },
  methods: {
    async searchRoadDetail() {
      await axios
        .get(
          "/road?road_name=" +
            this.roadName +
            "&city=" +
            this.cityName +
            "&ak=PMRZxriyfTn4x3BnjSTjznbZA2VRiD6J"
        )
        .then((response) => {
          this.trafficDetail = response.data;
          this.trafficData = {
            cityId: this.cityId,
            cityName: this.cityName,
            description: response.data.description,
          };
        })
        .catch((error) => console.error("Error fetching traffic data:", error));
      await updateTraffic(this.trafficData).then((response) => {
        this.$modal.msgSuccess("修改成功");
        this.getList();
      });
    },
    showTrafficDetail(row) {
      this.showDetail = true;
      this.cityName = row.cityName;
      this.cityId = row.cityId;
    },
    showTrafficMap(row) {
      this.cityName = row.cityName;
      this.showMap = true;
    },
    async getTrafficApi(row) {
      const city = row.cityName;

      //      https://api.map.baidu.com/traffic/v1/road?road_name=东二环&city=北京市&ak=您的AK

      // const apiUrl = `https://api.map.baidu.com/traffic/v1/road?road_name=东二环&city=北京市&ak=PMRZxriyfTn4x3BnjSTjznbZA2VRiD6J`;

      await axios
        .get(
          "/road?road_name=经十路&city=" +
            city +
            "&ak=PMRZxriyfTn4x3BnjSTjznbZA2VRiD6J"
        )
        .then((response) => {
          this.trafficData = {
            cityId: row.cityId,
            cityName: row.cityName,
            description: response.data.description,
          };
        })
        .catch((error) => console.error("Error fetching traffic data:", error));
      await updateTraffic(this.trafficData).then((response) => {
        this.$modal.msgSuccess("修改成功");
        this.getList();
      });
    },
    /** 查询路况检测列表 */
    getList() {
      this.loading = true;
      listTraffic(this.queryParams).then((response) => {
        this.trafficList = response.rows;
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
        cityId: null,
        cityName: null,
        description: null,
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
      this.ids = selection.map((item) => item.cityId);
      this.single = selection.length !== 1;
      this.multiple = !selection.length;
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加路况检测";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const cityId = row.cityId || this.ids;
      getTraffic(cityId).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改路况检测";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.cityId != null) {
            updateTraffic(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addTraffic(this.form).then((response) => {
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
      const cityIds = row.cityId || this.ids;
      this.$modal
        .confirm('是否确认删除路况检测编号为"' + cityIds + '"的数据项？')
        .then(function () {
          return delTraffic(cityIds);
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
        "traffic/traffic/export",
        {
          ...this.queryParams,
        },
        `traffic_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>

<style scoped>
.result-header {
  font-size: 18px; /* 设置字体大小 */
  font-weight: bold; /* 设置字体粗细 */
  color: #333; /* 设置字体颜色 */
  margin-bottom: 10px; /* 设置底部边距 */
  border-bottom: 2px solid #ccc; /* 设置底部边框 */
  padding-bottom: 5px; /* 设置底部内边距 */
}
</style>
