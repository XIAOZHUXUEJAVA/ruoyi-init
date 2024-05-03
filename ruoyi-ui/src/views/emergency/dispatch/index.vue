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
      <el-form-item label="事件编号" prop="emergencyId">
        <el-input
          v-model="queryParams.emergencyId"
          placeholder="请输入事件编号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <!-- <el-form-item label="调度资源编号" prop="resourceId">
        <el-input
          v-model="queryParams.resourceId"
          placeholder="请输入调度资源编号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item> -->
      <el-form-item label="调度状态" prop="status">
        <!-- <el-input
          v-model="queryParams.status"
          placeholder="请输入调度状态"
          clearable
          @keyup.enter.native="handleQuery"
        /> -->
        <el-select
          v-model="queryParams.status"
          placeholder="请选择调度状态"
          clearable
          @change="handleQuery"
        >
          <el-option label="已调度" value="0"></el-option>
          <el-option label="未调度" value="1"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="调度日期" prop="dispatchDate">
        <el-date-picker
          clearable
          v-model="queryParams.dispatchDate"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择调度日期"
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
          v-hasPermi="['emergency:dispatch:add']"
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
          v-hasPermi="['emergency:dispatch:edit']"
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
          v-hasPermi="['emergency:dispatch:remove']"
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
          v-hasPermi="['emergency:dispatch:export']"
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
      :data="dispatchList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="调度编号" align="center" prop="dispatchId" />
      <el-table-column label="事件编号" align="center" prop="emergencyId" />
      <!-- <el-table-column label="调度资源编号" align="center" prop="resourceId" /> -->
      <el-table-column label="调度资源" align="center" prop="resourceName" />
      <el-table-column label="调度内容" align="center" prop="content" />
      <!-- <el-table-column label="调度状态" align="center" prop="status" /> -->
      <el-table-column label="调度状态" align="center" prop="status">
        <template slot-scope="scope">
          <el-tag :type="scope.row.status === '0' ? 'success' : 'danger'">
            {{ scope.row.status === "0" ? "已完成" : "调度中" }}
          </el-tag>
        </template>
      </el-table-column>

      <el-table-column
        label="调度日期"
        align="center"
        prop="dispatchDate"
        width="180"
      >
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.dispatchDate, "{y}-{m}-{d}") }}</span>
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
            icon="el-icon-star-off"
            @click="handleDispatch(scope.row)"
            v-hasPermi="['emergency:dispatch:edit']"
            >调度</el-button
          >

          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['emergency:dispatch:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['emergency:dispatch:remove']"
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

    <!-- 添加或修改资源调度对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="事件编号" prop="emergencyId">
          <el-input v-model="form.emergencyId" placeholder="请输入事件编号" />
        </el-form-item>
        <el-form-item label="调度资源编号" prop="resourceId">
          <el-input
            v-model="form.resourceId"
            placeholder="请输入调度资源编号"
          />
        </el-form-item>
        <el-form-item label="调度内容">
          <editor v-model="form.content" :min-height="192" />
        </el-form-item>
        <!-- <el-form-item label="调度状态" prop="status">
          <el-input v-model="form.status" placeholder="请输入调度状态" />
        </el-form-item> -->
        <el-form-item label="调度状态" prop="status">
          <el-switch
            v-model="form.status"
            :active-value="'0'"
            :inactive-value="'1'"
            active-text="已完成"
            inactive-text="调度中"
          />
        </el-form-item>

        <el-form-item label="调度日期" prop="dispatchDate">
          <el-date-picker
            clearable
            v-model="form.dispatchDate"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择调度日期"
          >
          </el-date-picker>
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
  listDispatch,
  getDispatch,
  delDispatch,
  addDispatch,
  updateDispatch,
} from "@/api/emergency/dispatch";
import { listResources, getResources } from "@/api/pubservice/resources";

export default {
  name: "Dispatch",
  data() {
    return {
      resourcesList: [],
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
      // 资源调度表格数据
      dispatchList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        emergencyId: null,
        resourceId: null,
        content: null,
        status: null,
        dispatchDate: null,
      },
      updateDispatchForm: {
        dispatchId: null,
        emergencyId: null,
        resourceId: null,
        content: null,
        status: null,
        dispatchDate: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {},
    };
  },
  created() {
    this.getResourcesList()
      .then(() => {
        // 当获取类别完成后再调用 this.getList()
        this.getList();
      })
      .catch((error) => {
        // 处理获取类型列表失败的情况
        console.error("Failed to get categories:", error);
      });
  },
  methods: {
    handleDispatch(row) {
      this.updateDispatchForm = {
        dispatchId: row.dispatchId,
        emergencyId: row.emergencyId,
        resourceId: row.resourceId,
        content: row.content,
        status: row.status,
        dispatchDate: row.dispatchDate,
      };
      const prompt = "是否调度" + row.resourceName + "前往现场处理事故?";
      this.$confirm(prompt, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning",
      })
        .then(() => {
          getResources(row.resourceId).then((response) => {
            if (response.data.status === "1") {
              this.$alert("资源禁用，请选择其他资源", "警告", {
                confirmButtonText: "确定",
                type: "warning",
              });
            } else {
              this.updateDispatchForm.status = "0";
              updateDispatch(this.updateDispatchForm).then((response) => {
                this.$modal.msgSuccess("修改成功");
                this.open = false;
              });
              this.getList();
              this.$message({
                type: "success",
                message: "调度成功!",
              });
            }
          });
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消调度",
          });
        });
    },
    async getResourcesList() {
      await listResources().then((response) => {
        this.resourcesList = response.rows;
      });
    },
    /** 查询资源调度列表 */
    getList() {
      this.loading = true;
      listDispatch(this.queryParams).then((response) => {
        this.dispatchList = response.rows;
        this.dispatchList.forEach((dispatch) => {
          // 找到匹配的类型对象
          const resource = this.resourcesList.find(
            (res) => res.resourceId === dispatch.resourceId
          );
          // 如果找到了匹配的类型，则将其名称赋给资源对象的 categoryName 属性
          if (resource) {
            dispatch.resourceName = resource.resourceName;
          } else {
            // 如果没有找到匹配的类型，则给一个默认的值，或者你可以根据情况处理
            dispatch.resourceName = "Unknown";
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
        dispatchId: null,
        emergencyId: null,
        resourceId: null,
        content: null,
        status: null,
        dispatchDate: null,
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
      this.ids = selection.map((item) => item.dispatchId);
      this.single = selection.length !== 1;
      this.multiple = !selection.length;
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加资源调度";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const dispatchId = row.dispatchId || this.ids;
      getDispatch(dispatchId).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改资源调度";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.dispatchId != null) {
            updateDispatch(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addDispatch(this.form).then((response) => {
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
      const dispatchIds = row.dispatchId || this.ids;
      this.$modal
        .confirm('是否确认删除资源调度编号为"' + dispatchIds + '"的数据项？')
        .then(function () {
          return delDispatch(dispatchIds);
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
        "emergency/dispatch/export",
        {
          ...this.queryParams,
        },
        `dispatch_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>
