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
      <el-form-item label="所属城市ID" prop="cityId">
        <el-input
          v-model="queryParams.cityId"
          placeholder="请输入所属城市ID"
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
      <el-form-item label="设施类别" prop="category">
        <el-input
          v-model="queryParams.category"
          placeholder="请输入设施类别"
          clearable
          @keyup.enter.native="handleQuery"
        />
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
      <el-table-column label="设施ID" align="center" prop="facilityId" />
      <!-- <el-table-column label="所属城市ID" align="center" prop="cityId" /> -->
      <el-table-column label="所属城市" align="center" prop="cityName" />
      <!-- <el-table-column prop="cityId" label="所属城市名称" align="center">
        <template slot-scope="scope">
          {{ getCityName(scope.row.cityId) }}
        </template>
      </el-table-column> -->
      <el-table-column label="设施名称" align="center" prop="facilityName" />
      <el-table-column label="设施类别" align="center" prop="category" />
      <el-table-column label="设施地址" align="center" prop="address" />
      <!-- <el-table-column label="设备状态" align="center" prop="status" /> -->
      <el-table-column label="设施状态" align="center" prop="status">
        <!-- <template slot-scope="scope">
          {{ scope.row.status === "0" ? "可用" : "禁用" }}
        </template> -->
        <template slot-scope="scope">
          <el-tag :type="scope.row.status === '0' ? 'success' : 'danger'">
            {{ scope.row.status === "0" ? "可用" : "禁用" }}
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
        <el-form-item label="所属城市ID" prop="cityId">
          <el-input v-model="form.cityId" placeholder="请输入所属城市ID" />
        </el-form-item>
        <el-form-item label="所属城市" prop="cityName">
          <el-input v-model="form.cityName" placeholder="请输入所属城市名称" />
        </el-form-item>
        <el-form-item label="设施名称" prop="facilityName">
          <el-input v-model="form.facilityName" placeholder="请输入设施名称" />
        </el-form-item>
        <el-form-item label="设施类别" prop="category">
          <el-input v-model="form.category" placeholder="请输入设施类别" />
        </el-form-item>
        <el-form-item label="设施地址" prop="address">
          <el-input v-model="form.address" placeholder="请输入设施地址" />
        </el-form-item>
        <!-- <el-form-item label="设施状态" prop="status">
          <el-input v-model="form.status" placeholder="请输入设施状态" />
        </el-form-item> -->
        <el-form-item label="设施状态" prop="status">
          <el-switch
            v-model="form.status"
            active-value="0"
            inactive-value="1"
            active-text="可用"
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

import { getCities } from "@/api/city/cities";
export default {
  name: "Facilities",
  data() {
    return {
      //
      // cityName: "",
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
        cityId: null,
        facilityName: null,
        category: null,
        address: null,
        status: null,
        capacity: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        cityId: [
          { required: true, message: "所属城市ID不能为空", trigger: "blur" },
        ],
        facilityName: [
          { required: true, message: "设施名称不能为空", trigger: "blur" },
        ],
        category: [
          { required: true, message: "设施类别不能为空", trigger: "blur" },
        ],
      },
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询城市设施管理列表 */
    getList() {
      this.loading = true;
      listFacilities(this.queryParams).then((response) => {
        this.facilitiesList = response.rows;
        console.log(this.facilitiesList);
        this.total = response.total;
        this.loading = false;
      });
    },
    // getCityName(cityId) {
    //   const response = getCities(cityId);
    //   console.log(response);
    //   return response.data.cityName;
    // },

    async getCityName(cityId) {
      try {
        const response = await getCities(cityId);
        console.log(response.data.cityName);
        return response.data.cityName;
      } catch (error) {
        console.error("Error fetching city data:", error);
        return ""; // 如果出现错误，返回空字符串
      }
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
        cityId: null,
        facilityName: null,
        category: null,
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
        console.log(this.form);
        // let result = getCities(this.form.cityId);
        // let cityName = result.data.cityName;
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
