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
      <el-form-item label="城市名称" prop="city">
        <el-input
          v-model="queryParams.city"
          placeholder="请输入城市名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="星期" prop="week">
        <el-input
          v-model="queryParams.week"
          placeholder="请输入星期"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="实况时间" prop="updateDate">
        <el-input
          v-model="queryParams.updateDate"
          placeholder="请输入实况时间"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="实况温度" prop="tem">
        <el-input
          v-model="queryParams.tem"
          placeholder="请输入实况温度"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="白天温度" prop="temDay">
        <el-input
          v-model="queryParams.temDay"
          placeholder="请输入白天温度"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="夜间温度" prop="temNight">
        <el-input
          v-model="queryParams.temNight"
          placeholder="请输入夜间温度"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="风向" prop="win">
        <el-input
          v-model="queryParams.win"
          placeholder="请输入风向"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="风力" prop="winSpeed">
        <el-input
          v-model="queryParams.winSpeed"
          placeholder="请输入风力"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="风速" prop="winMeter">
        <el-input
          v-model="queryParams.winMeter"
          placeholder="请输入风速"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="气压" prop="pressrue">
        <el-input
          v-model="queryParams.pressrue"
          placeholder="请输入气压"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="湿度" prop="humidity">
        <el-input
          v-model="queryParams.humidity"
          placeholder="请输入湿度"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="记录日期" prop="date">
        <el-date-picker
          clearable
          v-model="queryParams.date"
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
          v-hasPermi="['city-data:weather:add']"
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
          v-hasPermi="['city-data:weather:edit']"
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
          v-hasPermi="['city-data:weather:remove']"
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
          v-hasPermi="['city-data:weather:export']"
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
      :data="weatherList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="记录ID" align="center" prop="recordId" />
      <el-table-column label="城市名称" align="center" prop="city" />
      <el-table-column label="星期" align="center" prop="week" />
      <el-table-column label="实况时间" align="center" prop="updateDate" />
      <el-table-column label="实况温度" align="center" prop="tem" />
      <el-table-column label="白天温度" align="center" prop="temDay" />
      <el-table-column label="夜间温度" align="center" prop="temNight" />
      <el-table-column label="风向" align="center" prop="win" />
      <el-table-column label="风力" align="center" prop="winSpeed" />
      <el-table-column label="风速" align="center" prop="winMeter" />
      <el-table-column label="气压" align="center" prop="pressrue" />
      <el-table-column label="湿度" align="center" prop="humidity" />
      <el-table-column label="记录日期" align="center" prop="date" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.date, "{y}-{m}-{d}") }}</span>
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
            v-hasPermi="['city-data:weather:edit']"
            >决策</el-button
          >

          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="showWeatherVisual(scope.row)"
            v-hasPermi="['city-data:weather:edit']"
            >可视化</el-button
          >

          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="getWeatherApi(scope.row)"
            v-hasPermi="['city-data:weather:edit']"
            >获取实时天气</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['city-data:weather:edit']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['city-data:weather:remove']"
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

    <!-- 添加或修改城市天气对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="城市名称" prop="city">
          <el-input v-model="form.city" placeholder="请输入城市名称" />
        </el-form-item>
        <el-form-item label="星期" prop="week">
          <el-input v-model="form.week" placeholder="请输入星期" />
        </el-form-item>
        <el-form-item label="实况时间" prop="updateDate">
          <el-input v-model="form.updateDate" placeholder="请输入实况时间" />
        </el-form-item>
        <el-form-item label="实况温度" prop="tem">
          <el-input v-model="form.tem" placeholder="请输入实况温度" />
        </el-form-item>
        <el-form-item label="白天温度" prop="temDay">
          <el-input v-model="form.temDay" placeholder="请输入白天温度" />
        </el-form-item>
        <el-form-item label="夜间温度" prop="temNight">
          <el-input v-model="form.temNight" placeholder="请输入夜间温度" />
        </el-form-item>
        <el-form-item label="风向" prop="win">
          <el-input v-model="form.win" placeholder="请输入风向" />
        </el-form-item>
        <el-form-item label="风力" prop="winSpeed">
          <el-input v-model="form.winSpeed" placeholder="请输入风力" />
        </el-form-item>
        <el-form-item label="风速" prop="winMeter">
          <el-input v-model="form.winMeter" placeholder="请输入风速" />
        </el-form-item>
        <el-form-item label="气压" prop="pressrue">
          <el-input v-model="form.pressrue" placeholder="请输入气压" />
        </el-form-item>
        <el-form-item label="湿度" prop="humidity">
          <el-input v-model="form.humidity" placeholder="请输入湿度" />
        </el-form-item>
        <el-form-item label="记录日期" prop="date">
          <el-date-picker
            clearable
            v-model="form.date"
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
      width="1500px"
      append-to-body
    >
      <weather-component :data="selectedRowData"></weather-component>
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
  listWeather,
  getWeather,
  delWeather,
  addWeather,
  updateWeather,
} from "@/api/city-data/weather";

import WeatherComponent from "../../../components/Visual/WeatherComponent.vue";
import GPTGenerate from "../../../components/GPT/GPTGenerate.vue";

export default {
  name: "Weather",
  data() {
    return {
      selectedPrompt: "",
      showGPT: false,
      showVisual: false,
      selectedRowData: null,
      whetherData: {
        recordId: null,
        city: null,
        week: null,
        updateDate: null,
        tem: null,
        temDay: null,
        temNight: null,
        win: null,
        winSpeed: null,
        winMeter: null,
        pressrue: null,
        humidity: null,
        date: null,
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
      // 城市天气表格数据
      weatherList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        city: null,
        week: null,
        updateDate: null,
        tem: null,
        temDay: null,
        temNight: null,
        win: null,
        winSpeed: null,
        winMeter: null,
        pressrue: null,
        humidity: null,
        date: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {},
    };
  },
  components: {
    WeatherComponent,
    GPTGenerate,
  },
  created() {
    this.getList();
  },
  methods: {
    handleGPT(row) {
      this.showGPT = true;
      this.selectedPrompt =
        `针对 ${row.city} 的天气情况，根据数据分析，` +
        `本周 ${row.week} 时间为${row.date}- ${row.updateDate}，` +
        `气温情况为：白天 ${row.temDay}°C，夜间 ${row.temNight}°C，实况温度为 ${row.tem}°C。` +
        `风向为 ${row.win}，风速为 ${row.winSpeed}，风速仪表显示为 ${row.winMeter}。` +
        `气压为 ${row.pressrue}hPa，湿度为 ${row.humidity}。` +
        `请就以上数据，提出以下建议和决策：\n\n` +
        `1. 城市居民今日出行建议\n` +
        `2. 是否有灾害发生的风险\n` +
        `3. 政府需要采取的具体措施`;
    },
    showWeatherVisual(row) {
      this.showVisual = true;
      this.selectedRowData = row;
      this.title =
        row.city +
        "天气可视化" +
        " " +
        row.date +
        " " +
        row.updateDate +
        " " +
        row.week +
        " " +
        row.win +
        " " +
        row.winSpeed;
    },
    async getWeatherApi(row) {
      this.weatherData = {
        recordId: row.recordId,
        city: null,
        week: null,
        updateDate: null,
        tem: null,
        temDay: null,
        temNight: null,
        win: null,
        winSpeed: null,
        winMeter: null,
        pressrue: null,
        humidity: null,
        date: null,
      };
      const city = row.city;
      const apiUrl = `http://v1.yiketianqi.com/free/day?appid=85749543&appsecret=Ys8Nx4wB&unescape=1&city=${city}`;

      await fetch(apiUrl)
        .then((response) => response.json())
        .then((data) => {
          this.weatherData = {
            recordId: row.recordId,
            city: data.city,
            week: data.week,
            updateDate: data.update_time,
            tem: data.tem,
            temDay: data.tem_day,
            temNight: data.tem_night,
            win: data.win,
            winSpeed: data.win_speed,
            winMeter: data.win_meter,
            pressrue: data.pressure,
            humidity: data.humidity,
            date: data.date,
          };
        })
        .catch((error) => console.error("Error fetching weather data:", error));
      await updateWeather(this.weatherData).then((response) => {
        this.$modal.msgSuccess("修改成功");
        this.getList();
      });
    },
    /** 查询城市天气列表 */
    getList() {
      this.loading = true;
      listWeather(this.queryParams).then((response) => {
        this.weatherList = response.rows;
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
        recordId: null,
        city: null,
        week: null,
        updateDate: null,
        tem: null,
        temDay: null,
        temNight: null,
        win: null,
        winSpeed: null,
        winMeter: null,
        pressrue: null,
        humidity: null,
        date: null,
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
      this.ids = selection.map((item) => item.recordId);
      this.single = selection.length !== 1;
      this.multiple = !selection.length;
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加城市天气";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const recordId = row.recordId || this.ids;
      getWeather(recordId).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改城市天气";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.recordId != null) {
            updateWeather(this.form).then((response) => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addWeather(this.form).then((response) => {
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
      const recordIds = row.recordId || this.ids;
      this.$modal
        .confirm('是否确认删除城市天气编号为"' + recordIds + '"的数据项？')
        .then(function () {
          return delWeather(recordIds);
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
        "city-data/weather/export",
        {
          ...this.queryParams,
        },
        `weather_${new Date().getTime()}.xlsx`
      );
    },
  },
};
</script>
