<template>
  <div class="chart-container">
    <div class="row">
      <div ref="chart1" class="chart"></div>
      <div ref="chart2" class="chart"></div>
      <div ref="chart3" class="chart"></div>
    </div>
    <div class="row">
      <div ref="chart4" class="chart"></div>
      <div ref="humidityChart" class="chart"></div>
      <div ref="win_meter_chart" class="chart"></div>
    </div>
  </div>
</template>

<script>
import * as echarts from "echarts";

export default {
  name: "WeatherComponent",
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
      const chart1 = echarts.init(this.$refs.chart1);
      const chart2 = echarts.init(this.$refs.chart2);
      const chart3 = echarts.init(this.$refs.chart3);
      const chart4 = echarts.init(this.$refs.chart4);
      const humidityChart = echarts.init(this.$refs.humidityChart);
      const win_meter_chart = echarts.init(this.$refs.win_meter_chart);

      const option = {
        option1: {
          series: [
            {
              name: "温度",
              type: "gauge",
              radius: "70%",
              detail: { formatter: "{value}°C", fontSize: 14 },
              data: [{ value: this.data.tem, name: "实况温度" }],
              axisLabel: { fontSize: 8 },
              axisLine: {
                lineStyle: {
                  width: 10,
                  color: [
                    [0.2, "#008000"],
                    [0.8, "#ffa500"],
                    [1, "#ff0000"],
                  ],
                },
              },
              pointer: {
                width: 4,
                length: "70%",
              },
            },
          ],
        },
        option2: {
          series: [
            {
              name: "温度",
              type: "gauge",
              radius: "70%",
              detail: { formatter: "{value}°C", fontSize: 14 },
              data: [{ value: this.data.temDay, name: "白日温度" }],
              axisLabel: { fontSize: 8 },
              axisLine: {
                lineStyle: {
                  width: 10,
                  color: [
                    [0.2, "#008000"],
                    [0.8, "#ffa500"],
                    [1, "#ff0000"],
                  ],
                },
              },
              pointer: {
                width: 4,
                length: "70%",
              },
            },
          ],
        },
        option3: {
          series: [
            {
              name: "温度",
              type: "gauge",
              radius: "70%",
              detail: { formatter: "{value}°C", fontSize: 14 },
              data: [{ value: this.data.temNight, name: "夜间温度" }],
              axisLabel: { fontSize: 8 },
              axisLine: {
                lineStyle: {
                  width: 10,
                  color: [
                    [0.2, "#008000"],
                    [0.8, "#ffa500"],
                    [1, "#ff0000"],
                  ],
                },
              },
              pointer: {
                width: 4,
                length: "70%",
              },
            },
          ],
        },
        option4: {
          series: [
            {
              min: 0,
              max: 3000,
              name: "气压",
              type: "gauge",
              radius: "70%",
              detail: { formatter: "{value}hPa", fontSize: 14 },
              data: [{ value: this.data.pressrue, name: "气压" }],
              axisLabel: { fontSize: 8 },
              axisLine: {
                lineStyle: {
                  width: 10,
                  color: [
                    [0.2, "#008000"],
                    [0.8, "#ffa500"],
                    [1, "#ff0000"],
                  ],
                },
              },
              pointer: {
                width: 4,
                length: "70%",
              },
            },
          ],
        },

        win_meter_chart: {
          series: [
            {
              type: "gauge",
              progress: {
                show: true,
                width: 18,
                roundCap: true, // Rounded cap for the progress bar
              },
              axisLine: {
                lineStyle: {
                  width: 18,
                  color: [
                    [0.2, "#67e0e3"],
                    [0.8, "#37a2da"],
                    [1, "#fd666d"],
                  ], // Custom color stops for the axis line
                },
              },
              //   axisTick: {
              //     show: false,
              //   },
              splitLine: {
                length: 15,
                lineStyle: {
                  width: 2,
                  color: "#999",
                },
              },
              axisLabel: {
                distance: 19,
                color: "#999",
                fontSize: 14,
              },
              anchor: {
                show: true,
                showAbove: true,
                size: 10,
                itemStyle: {
                  borderWidth: 5,
                  borderColor: "#999", // Color of the anchor
                },
              },
              title: {
                show: false,
              },
              pointer: {
                width: 4,
                length: "70%",
                itemStyle: {
                  color: "#999", // Color of the pointer
                },
              },
              detail: {
                fontSize: 14,
                formatter: "{value}km/h",
              },
              data: [
                {
                  value: parseFloat(this.data.winMeter.replace("km/h", "")),
                  name: "风速",
                },
              ],
            },
          ],
        },

        humidityOption: {
          series: [
            {
              type: "gauge",
              axisLine: {
                lineStyle: {
                  width: 30,
                  color: [
                    [0.3, "#fd666d"],
                    [0.7, "#37a2da"],
                    [1, "#67e0e3"],
                  ],
                },
              },
              pointer: {
                itemStyle: {
                  color: "auto",
                },
              },
              axisTick: {
                distance: -30,
                length: 8,
                lineStyle: {
                  color: "#fff",
                  width: 2,
                },
              },
              splitLine: {
                distance: -30,
                length: 30,
                lineStyle: {
                  color: "#fff",
                  width: 4,
                },
              },
              axisLabel: {
                color: "inherit",
                distance: 40,
                fontSize: 15,
              },
              detail: {
                valueAnimation: true,
                formatter: "{value}%",
                fontSize: 14,
                color: "inherit",
              },
              data: [
                {
                  value: parseFloat(this.data.humidity.replace("%", "")),
                  name: "湿度",
                },
              ],
            },
          ],
        },
      };

      chart1.setOption(option.option1);
      chart2.setOption(option.option2);
      chart3.setOption(option.option3);
      chart4.setOption(option.option4);
      humidityChart.setOption(option.humidityOption);
      win_meter_chart.setOption(option.win_meter_chart);
    },
  },
};
</script>

<style scoped>
.chart-container {
  display: flex;
  flex-direction: column;
}

.row {
  display: flex;
  justify-content: space-between;
}

.chart {
  flex: 1;
  height: 300px;
}
</style>
