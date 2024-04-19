<template>
  <div ref="chart" style="width: 100%; height: 600px"></div>
</template>

<script>
import * as echarts from "echarts";

export default {
  name: "EnvComponent",
  props: {
    data: {
      type: Object,
      required: true,
    },
  },
  mounted() {
    this.renderChart();
  },
  watch: {
    data: {
      handler() {
        this.renderChart();
      },
      deep: true,
    },
  },
  methods: {
    renderChart() {
      const chart = echarts.init(this.$refs.chart);

      const option = {
        title: {
          text:
            this.data.cityName + "-环境质量数据可视化-" + this.data.recordDate,
        },
        tooltip: {
          trigger: "axis",
        },
        xAxis: {
          type: "category",
          data: ["空气质量指数", "噪音水平"],
        },
        yAxis: {},
        series: [
          {
            name: "数据",
            type: "bar",
            data: [this.data.airQuality, this.data.noiseLevel],
          },
        ],
      };

      chart.setOption(option);
    },
  },
};
</script>

<style>
/* 这里可以添加样式 */
</style>
