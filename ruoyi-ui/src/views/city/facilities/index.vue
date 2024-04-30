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
      <el-form-item label="设施名称" prop="facilityName">
        <el-input
          v-model="queryParams.facilityName"
          placeholder="请输入设施名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="设施类别" prop="isPublic">
        <!-- <el-input
          v-model="queryParams.isPublic"
          placeholder="请输入设施类别"
          clearable
          @keyup.enter.native="handleQuery"
        /> -->
        <el-select
          v-model="queryParams.isPublic"
          placeholder="请选择设施类别"
          clearable
          @change="handleQuery"
        >
          <el-option label="公有" value="0"></el-option>
          <el-option label="私有" value="1"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="设施地址" prop="address">
        <el-input
          v-model="queryParams.address"
          placeholder="请输入设施地址"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="设施容量" prop="capacity">
        <el-input
          v-model="queryParams.capacity"
          placeholder="请输入设施容量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="设施状态" prop="status">
        <!-- <el-input
          v-model="queryParams.isPublic"
          placeholder="请输入设施类别"
          clearable
          @keyup.enter.native="handleQuery"
        /> -->
        <el-select
          v-model="queryParams.status"
          placeholder="请选择设施状态"
          clearable
          @change="handleQuery"
        >
          <el-option label="正常" value="0"></el-option>
          <el-option label="禁用" value="1"></el-option>
        </el-select>
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
          v-hasPermi="['city:facilities:add']"
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
          v-hasPermi="['city:facilities:edit']"
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
          v-hasPermi="['city:facilities:remove']"
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
          v-hasPermi="['city:facilities:export']"
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
      :data="facilitiesList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="设施编号" align="center" prop="facilityId" />
      <el-table-column label="所属城市" align="center" prop="cityName" />
      <el-table-column label="设施名称" align="center" prop="facilityName" />
      <el-table-column label="设施类别" align="center" prop="isPublic">
        <template slot-scope="scope">
          <el-tag :type="scope.row.isPublic === '0' ? 'success' : 'danger'">
            {{ scope.row.isPublic === "0" ? "公有" : "私有" }}
          </el-tag>
        </template>
      </el-table-column>

      <el-table-column label="设施地址" align="center" prop="address">
        <template slot-scope="scope">
          <el-link
            type="primary"
            :underline="false"
            @click="showLocationOnMap(scope.row.address)"
            style="cursor: pointer"
          >
            {{ scope.row.address }}
          </el-link>
        </template>
      </el-table-column>

      <el-table-column label="设施状态" align="center" prop="status">
        <template slot-scope="scope">
          <el-tag :type="scope.row.status === '0' ? 'success' : 'danger'">
            {{ scope.row.status === "0" ? "正常" : "禁用" }}
          </el-tag>
        </template>
      </el-table-column>

      <el-table-column label="设施容量" align="center" prop="capacity" />
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
            v-hasPermi="['city:facilities:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['city:facilities:remove']"
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

    <!-- 添加或修改城市设施管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="所属城市" prop="cityName">
          <el-input v-model="form.cityName" placeholder="请输入所属城市" />
        </el-form-item>
        <el-form-item label="设施名称" prop="facilityName">
          <el-input v-model="form.facilityName" placeholder="请输入设施名称" />
        </el-form-item>
        <el-form-item label="设施类别" prop="isPublic">
          <el-switch
            v-model="form.isPublic"
            :active-value="'0'"
            :inactive-value="'1'"
            active-text="公有"
            inactive-text="私有"
          />
        </el-form-item>
        <el-form-item label="设施地址" prop="address">
          <el-input v-model="form.address" placeholder="请输入设施地址" />
        </el-form-item>
        <el-form-item label="设施状态" prop="status">
          <el-switch
            v-model="form.status"
            :active-value="'0'"
            :inactive-value="'1'"
            active-text="正常"
            inactive-text="禁用"
          />
        </el-form-item>
        <el-form-item label="设施容量" prop="capacity">
          <el-input v-model="form.capacity" placeholder="请输入设施容量" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
    <el-dialog
      title="地图"
      :visible.sync="showMap"
      width="1500px"
      height="800px"
    >
      <AddressMap :zoom="12" :keyword="keyword"></AddressMap>
    </el-dialog>
  </div>
</template>

<script>
import {
  listFacilities,
  getFacilities,
  delFacilities,
  addFacilities,
  updateFacilities,
} from "@/api/city/facilities";

import AddressMap from "../../../components/BaiduMap/AddressMap.vue";

export default {
  name: "Facilities",
  data() {
    return {
      center: { lng: 0.0, lat: 0.0 },
      keyword: "",
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
      // 城市设施管理表格数据
      facilitiesList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        cityName: null,
        facilityName: null,
        isPublic: null,
        address: null,
        status: null,
        capacity: null,
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
  components: {
    AddressMap,
  },
  methods: {
    showLocationOnMap(address) {
      console.log(address);
      this.keyword = address;
      this.showMap = true;
    },
    /** 查询城市设施管理列表 */
    getList() {
      this.loading = true;
      listFacilities(this.queryParams).then((response) => {
        this.facilitiesList = response.rows;
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
        facilityId: null,
        cityName: null,
        facilityName: null,
        isPublic: null,
        address: null,
        status: null,
        capacity: null,
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
      this.ids = selection.map((item) => item.facilityId);
      this.single = selection.length !== 1;
      this.multiple = !selection.length;
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加城市设施管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const facilityId = row.facilityId || this.ids;
      getFacilities(facilityId).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改城市设施管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.facilityId != null) {
            updateFacilities(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addFacilities(this.form).then((response) => {
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
      const facilityIds = row.facilityId || this.ids;
      this.$modal
        .confirm(
          '是否确认删除城市设施管理编号为"' + facilityIds + '"的数据项？'
        )
        .then(function () {
          return delFacilities(facilityIds);
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
        "city/facilities/export",
        {
          ...this.queryParams,
        },
        `facilities_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>
