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
      <el-form-item label="隶属省份 | 直辖" prop="province">
        <el-input
          v-model="queryParams.province"
          placeholder="请输入隶属省份 | 直辖"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="人口数量" prop="population">
        <el-input
          v-model="queryParams.population"
          placeholder="请输入人口数量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="建市日期" prop="establishedDate">
        <el-date-picker
          clearable
          v-model="queryParams.establishedDate"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择建市日期"
        >
        </el-date-picker>
      </el-form-item>
      <el-form-item label="经纬度" prop="location">
        <el-input
          v-model="queryParams.location"
          placeholder="请输入经纬度"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="城市面积" prop="area">
        <el-input
          v-model="queryParams.area"
          placeholder="请输入城市面积(km²)"
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
          v-hasPermi="['city:cities:add']"
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
          v-hasPermi="['city:cities:edit']"
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
          v-hasPermi="['city:cities:remove']"
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
          v-hasPermi="['city:cities:export']"
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
      :data="citiesList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="城市编号" align="center" prop="cityId" />
      <el-table-column label="城市名称" align="center" prop="cityName">
      </el-table-column>
      <el-table-column label="隶属省份 | 直辖" align="center" prop="province" />
      <el-table-column label="人口数量" align="center" prop="population" />
      <el-table-column
        label="建市日期"
        align="center"
        prop="establishedDate"
        width="180"
      >
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.establishedDate, "{y}-{m}-{d}") }}</span>
        </template>
      </el-table-column>
      <el-table-column label="经纬度" align="center" prop="location">
        <template slot-scope="scope">
          <el-link
            type="primary"
            :underline="false"
            @click="showLocationOnMap(scope.row.location)"
            style="cursor: pointer"
          >
            {{ scope.row.location }}
          </el-link>
        </template>
      </el-table-column>
      <el-table-column label="城市面积(km²)" align="center" prop="area" />
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
            @click="handleUpdate(scope.row)"
            v-hasPermi="['city:cities:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['city:cities:remove']"
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

    <!-- 添加或修改城市基础信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="城市名称" prop="cityName">
          <el-input v-model="form.cityName" placeholder="请输入城市名称" />
        </el-form-item>
        <el-form-item label="隶属省份 | 直辖" prop="province">
          <el-input
            v-model="form.province"
            placeholder="请输入隶属省份 | 直辖"
          />
        </el-form-item>
        <el-form-item label="人口数量" prop="population">
          <el-input v-model="form.population" placeholder="请输入人口数量" />
        </el-form-item>
        <el-form-item label="建市日期" prop="establishedDate">
          <el-date-picker
            clearable
            v-model="form.establishedDate"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择建市日期"
          >
          </el-date-picker>
        </el-form-item>
        <el-form-item label="经纬度" prop="location">
          <div
            style="
              display: grid;
              grid-template-columns: auto 1fr;
              align-items: center;
            "
          >
            <el-input v-model="form.location" placeholder="请输入经纬度" />
            <i
              class="el-icon-location"
              @click="updateLocationOnMap(form.location)"
            ></i>
          </div>
        </el-form-item>
        <el-form-item label="城市面积(km²)" prop="area">
          <el-input v-model="form.area" placeholder="请输入城市面积(km²)" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
    <el-dialog
      title="城市位置"
      :visible.sync="showMap"
      width="1500px"
      height="800px"
    >
      <MapComponent :center="center" :zoom="zoom"></MapComponent>
    </el-dialog>
    <el-dialog
      title="修改城市位置"
      :visible.sync="showUpdateMap"
      width="1500px"
      height="800px"
    >
      <UpdateMap
        @update-location="handleLocationUpdated"
        :zoom="12"
        :center="this.handledLocation"
      ></UpdateMap>
    </el-dialog>
  </div>
</template>

<script>
import {
  listCities,
  getCities,
  delCities,
  addCities,
  updateCities,
} from "@/api/city/cities";

// const MapComponent = () => import("@/components/BaiduMap/MapComponent.vue");
// import MapComponent from "@/components/BaiduMap/MapComponent.vue";
import MapComponent from "../../../components/BaiduMap/MapComponent.vue";
import UpdateMap from "../../../components/BaiduMap/UpdateMap.vue";

export default {
  name: "Cities",
  data() {
    return {
      handledLocation: {},
      showUpdateMap: false,
      center: { lng: 0.0, lat: 0.0 }, // 初始地图中心位置
      zoom: 12, // 地图展示级别
      showMap: false, // 控制地图组件的显示状态
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
      // 城市基础信息表格数据
      citiesList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        cityName: null,
        province: null,
        population: null,
        establishedDate: null,
        location: null,
        area: null,
      },
      // 表单参数
      form: {
        location: "",
      },
      // 表单校验
      rules: {},
    };
  },
  created() {
    this.getList();
  },
  components: {
    MapComponent,
    UpdateMap,
  },
  methods: {
    handleLocationUpdated(location) {
      // 当子组件 UpdateMap 中的 location 发生变化时，更新父组件的 form.location
      this.form.location = location;
    },
    showLocationOnMap(location) {
      const [lng, lat] = location.split(",").map(parseFloat); // 解析经纬度字符串
      this.center = { lng, lat }; // 更新地图中心位置
      this.showMap = true; // 显示地图组件
    },
    updateLocationOnMap(location) {
      this.showUpdateMap = true;
      // 使用 split 方法将经纬度字符串拆分为数组
      let locationArray = location.split(",");

      // 将拆分后的数组元素转换为数字，并创建一个包含 lng 和 lat 属性的对象
      let locationObject = {
        lng: parseFloat(locationArray[0]),
        lat: parseFloat(locationArray[1]),
      };
      this.handledLocation = locationObject;
    },

    /** 查询城市基础信息列表 */
    getList() {
      this.loading = true;
      listCities(this.queryParams).then((response) => {
        this.citiesList = response.rows;
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
        province: null,
        population: null,
        establishedDate: null,
        location: null,
        area: null,
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
      this.title = "添加城市基础信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const cityId = row.cityId || this.ids;
      getCities(cityId).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改城市基础信息";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.cityId != null) {
            updateCities(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addCities(this.form).then((response) => {
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
        .confirm('是否确认删除城市基础信息编号为"' + cityIds + '"的数据项？')
        .then(function () {
          return delCities(cityIds);
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
        "city/cities/export",
        {
          ...this.queryParams,
        },
        `cities_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>

<style scoped>
.el-location-input {
  color: red;
  padding-left: 10px;
}
</style>
