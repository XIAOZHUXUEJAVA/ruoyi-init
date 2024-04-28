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
      <el-form-item label="类别ID" prop="categoryId">
        <el-input
          v-model="queryParams.categoryId"
          placeholder="请输入类别ID"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="事件地址" prop="emergencyAddress">
        <el-input
          v-model="queryParams.emergencyAddress"
          placeholder="请输入事件地址"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="事件状态" prop="status">
        <el-input
          v-model="queryParams.status"
          placeholder="请输入事件状态"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="事件日期" prop="emergencyDate">
        <el-date-picker
          clearable
          v-model="queryParams.emergencyDate"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择事件日期"
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
          v-hasPermi="['emergency:emergency:add']"
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
          v-hasPermi="['emergency:emergency:edit']"
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
          v-hasPermi="['emergency:emergency:remove']"
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
          v-hasPermi="['emergency:emergency:export']"
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
      :data="emergencyList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="事件ID" align="center" prop="emergencyId" />
      <el-table-column label="所属城市" align="center" prop="cityName" />
      <!-- <el-table-column label="类别ID" align="center" prop="categoryId" /> -->
      <el-table-column label="事件类别" align="center" prop="categoryName" />
      <el-table-column label="事件描述" align="center" prop="description" />
      <el-table-column
        label="事件地址"
        align="center"
        prop="emergencyAddress"
      />
      <!-- <el-table-column label="事件状态" align="center" prop="status" /> -->
      <el-table-column label="事件状态" align="center" prop="status">
        <template slot-scope="scope">
          <el-tag :type="scope.row.status === '0' ? 'success' : 'danger'">
            {{ scope.row.status === "0" ? "已处理" : "未处理" }}
          </el-tag>
        </template>
      </el-table-column>

      <el-table-column
        label="事件日期"
        align="center"
        prop="emergencyDate"
        width="180"
      >
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.emergencyDate, "{y}-{m}-{d}") }}</span>
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
            @click="handleResponse(scope.row)"
            v-hasPermi="['emergency:emergency:edit']"
            >响应</el-button
          >

          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['emergency:emergency:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['emergency:emergency:remove']"
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
        <el-form-item label="类别ID" prop="categoryId">
          <!-- <el-input v-model="form.categoryId" placeholder="请输入类别ID" /> -->
          <el-select v-model="form.categoryId" placeholder="请选择资源类型">
            <el-option
              v-for="category in categoryList"
              :key="category.categoryId"
              :label="category.categoryName"
              :value="category.categoryId"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="事件描述" prop="description">
          <el-input
            v-model="form.description"
            type="textarea"
            placeholder="请输入内容"
          />
        </el-form-item>
        <el-form-item label="事件地址" prop="emergencyAddress">
          <el-input
            v-model="form.emergencyAddress"
            placeholder="请输入事件地址"
          />
        </el-form-item>
        <el-form-item label="事件状态" prop="status">
          <el-input v-model="form.status" placeholder="请输入事件状态" />
        </el-form-item>
        <el-form-item label="事件日期" prop="emergencyDate">
          <el-date-picker
            clearable
            v-model="form.emergencyDate"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择事件日期"
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
      <emergency-map
        @update-list="updateList"
        :address="this.address"
        :emergency="this.updateStatusForm"
        :categoryName="this.categoryName"
      ></emergency-map>
    </el-dialog>
  </div>
</template>

<script>
import {
  listEmergency,
  getEmergency,
  delEmergency,
  addEmergency,
  updateEmergency,
} from "@/api/emergency/emergency";

import { listCategory } from "@/api/emergency/category";
import EmergencyMap from "../../../components/BaiduMap/EmergencyMap.vue";
export default {
  name: "Emergency",
  data() {
    return {
      categoryName: "",
      address: {
        lng: null,
        lat: null,
      },
      showMap: false,
      categoryList: [],
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
      emergencyList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      updateStatusForm: {
        emergencyId: null,
        cityName: null,
        categoryId: null,
        description: null,
        emergencyAddress: null,
        status: null,
        emergencyDate: null,
      },
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        cityName: null,
        categoryId: null,
        description: null,
        emergencyAddress: null,
        status: null,
        emergencyDate: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {},
    };
  },
  components: { EmergencyMap },
  created() {
    // this.getCategories();
    // this.getList();

    this.getCategories()
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
    updateList(success) {
      console.log(success);
      if (success === "success") {
        this.getList();
      }
    },
    handleResponse(row) {
      this.categoryName = row.categoryName;
      this.updateStatusForm = {
        emergencyId: row.emergencyId,
        cityName: row.cityName,
        categoryId: row.categoryId,
        description: row.description,
        emergencyAddress: row.emergencyAddress,
        status: row.status,
        emergencyDate: row.emergencyDate,
      };

      var myGeo = new BMapGL.Geocoder();
      // 将地址解析结果显示在地图上，并调整地图视野
      myGeo.getPoint(
        row.emergencyAddress,
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
    async getCategories() {
      await listCategory().then((response) => {
        this.categoryList = response.rows;
      });
    },
    /** 查询交通事件列表 */
    getList() {
      this.loading = true;
      listEmergency(this.queryParams).then((response) => {
        this.emergencyList = response.rows;

        this.emergencyList.forEach((emergency) => {
          // 找到匹配的类型对象
          const category = this.categoryList.find(
            (cat) => cat.categoryId === emergency.categoryId
          );
          // 如果找到了匹配的类型，则将其名称赋给资源对象的 categoryName 属性
          if (category) {
            emergency.categoryName = category.categoryName;
          } else {
            // 如果没有找到匹配的类型，则给一个默认的值，或者你可以根据情况处理
            emergency.categoryName = "Unknown";
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
        emergencyId: null,
        cityName: null,
        categoryId: null,
        description: null,
        emergencyAddress: null,
        status: null,
        emergencyDate: null,
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
      this.ids = selection.map((item) => item.emergencyId);
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
      const emergencyId = row.emergencyId || this.ids;
      getEmergency(emergencyId).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改交通事件";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.emergencyId != null) {
            updateEmergency(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addEmergency(this.form).then((response) => {
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
      const emergencyIds = row.emergencyId || this.ids;
      this.$modal
        .confirm('是否确认删除交通事件编号为"' + emergencyIds + '"的数据项？')
        .then(function () {
          return delEmergency(emergencyIds);
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
        "emergency/emergency/export",
        {
          ...this.queryParams,
        },
        `emergency_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>
