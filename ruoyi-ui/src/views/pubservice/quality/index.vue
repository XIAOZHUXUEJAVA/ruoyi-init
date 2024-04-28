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
      <el-form-item label="服务名称" prop="serviceName">
        <el-input
          v-model="queryParams.serviceName"
          placeholder="请输入服务名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="服务类别" prop="categoryId">
        <!-- <el-input
          v-model="queryParams.categoryId"
          placeholder="请输入服务类别"
          clearable
          @keyup.enter.native="handleQuery"
        /> -->

        <el-select
          v-model="queryParams.categoryId"
          placeholder="请选择资源类型"
          @keyup.enter.native="handleQuery"
        >
          <el-option
            v-for="category in serviceCategoryList"
            :key="category.categoryId"
            :label="category.categoryName"
            :value="category.categoryId"
          ></el-option>
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
          v-hasPermi="['pubservice:quality:add']"
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
          v-hasPermi="['pubservice:quality:edit']"
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
          v-hasPermi="['pubservice:quality:remove']"
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
          v-hasPermi="['pubservice:quality:export']"
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
      <el-table-column label="服务ID" align="center" prop="serviceId" />
      <el-table-column label="所属城市" align="center" prop="cityName" />
      <el-table-column label="服务名称" align="center" prop="serviceName" />
      <!-- <el-table-column label="服务类别" align="center" prop="categoryId" /> -->
      <el-table-column label="服务类型" align="center" prop="categoryName" />
      <el-table-column label="服务内容" align="center" prop="description" />
      <el-table-column label="服务质量" align="center" prop="quality" />
      <el-table-column label="服务状态" align="center" prop="status">
        <template slot-scope="scope">
          <el-tag :type="scope.row.status === '0' ? 'success' : 'danger'">
            {{ scope.row.status === "0" ? "已完成" : "服务中" }}
          </el-tag>
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
            @click="handleUpdate(scope.row)"
            v-hasPermi="['pubservice:quality:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['pubservice:quality:remove']"
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

    <!-- 添加或修改服务质量对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="所属城市" prop="cityName">
          <el-input v-model="form.cityName" placeholder="请输入所属城市" />
        </el-form-item>
        <el-form-item label="服务名称" prop="serviceName">
          <el-input v-model="form.serviceName" placeholder="请输入服务名称" />
        </el-form-item>
        <!-- <el-form-item label="服务类别" prop="categoryId">
          <el-input v-model="form.categoryId" placeholder="请输入服务类别" />
        </el-form-item> -->

        <el-form-item label="服务类型" prop="categoryId">
          <el-select v-model="form.categoryId" placeholder="请选择服务类型">
            <el-option
              v-for="category in serviceCategoryList"
              :key="category.categoryId"
              :label="category.categoryName"
              :value="category.categoryId"
            ></el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="服务内容" prop="description">
          <el-input
            v-model="form.description"
            type="textarea"
            placeholder="请输入内容"
          />
        </el-form-item>
        <el-form-item label="服务质量" prop="quality">
          <el-input
            v-model="form.quality"
            type="textarea"
            placeholder="请输入内容"
          />
        </el-form-item>

        <el-form-item label="服务状态" prop="status">
          <el-switch
            v-model="form.status"
            :active-value="'0'"
            :inactive-value="'1'"
            active-text="已完成"
            inactive-text="服务中"
          />
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
  listQuality,
  getQuality,
  delQuality,
  addQuality,
  updateQuality,
} from "@/api/pubservice/quality";

import { listServicecategory } from "@/api/pubservice/servicecategory";
export default {
  name: "Quality",
  data() {
    return {
      serviceCategoryList: [],
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
      // 服务质量表格数据
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
        serviceName: null,
        categoryId: null,
        description: null,
        quality: null,
        status: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {},
    };
  },
  created() {
    this.getServicecategory()
      .then(() => {
        // 当获取类别完成后再调用 this.getList()
        this.getList();
      })
      .catch((error) => {
        // 处理获取类型列表失败的情况
        console.error("Failed to get categories:", error);
      });

    // this.getList();
  },
  methods: {
    async getServicecategory() {
      await listServicecategory().then((response) => {
        this.serviceCategoryList = response.rows;
      });
    },
    /** 查询服务质量列表 */
    getList() {
      this.loading = true;
      listQuality(this.queryParams).then((response) => {
        this.qualityList = response.rows;

        this.qualityList.forEach((quality) => {
          // 找到匹配的类型对象
          const category = this.serviceCategoryList.find(
            (cat) => cat.categoryId === quality.categoryId
          );
          // 如果找到了匹配的类型，则将其名称赋给资源对象的 categoryName 属性
          if (category) {
            quality.categoryName = category.categoryName;
          } else {
            // 如果没有找到匹配的类型，则给一个默认的值，或者你可以根据情况处理
            quality.categoryName = "Unknown";
          }
        });

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
        serviceId: null,
        cityName: null,
        serviceName: null,
        categoryId: null,
        description: null,
        quality: null,
        status: null,
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
      this.ids = selection.map((item) => item.serviceId);
      this.single = selection.length !== 1;
      this.multiple = !selection.length;
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加服务质量";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const serviceId = row.serviceId || this.ids;
      getQuality(serviceId).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改服务质量";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.serviceId != null) {
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
      const serviceIds = row.serviceId || this.ids;
      this.$modal
        .confirm('是否确认删除服务质量编号为"' + serviceIds + '"的数据项？')
        .then(function () {
          return delQuality(serviceIds);
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
        "pubservice/quality/export",
        {
          ...this.queryParams,
        },
        `quality_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>
