<template>
  <div class="chart-container" ref="chart"></div>
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
          text: `${this.data.cityName} - 环境质量数据可视化 - ${this.data.recordDate}`,
          textStyle: {
            fontSize: 16,
            fontWeight: "bold",
          },
          left: "center",
        },
        tooltip: {
          trigger: "axis",
        },
        xAxis: {
          type: "category",
          data: ["空气质量指数", "噪音水平"],
          axisLabel: {
            fontSize: 14,
          },
        },
        yAxis: {},
        series: [
          {
            name: "数据",
            type: "bar",
            barWidth: "60%",
            data: [
              { value: this.data.airQuality, itemStyle: { color: "#5470c6" } },
              { value: this.data.noiseLevel, itemStyle: { color: "#91cc75" } },
            ],
            // data: [this.data.airQuality, this.data.noiseLevel],
            // itemStyle: {
            //   color: "#5470c6",
            // },
          },
        ],
      };

      chart.setOption(option);
    },
  },
};
</script>

<style scoped>
.chart-container {
  width: 100%;
  height: 600px;
}
</style>
