<template>
  <div>
    <div id="trafficLegend">
      <el-button type="success">畅通</el-button>
      <el-button type="warning">缓行</el-button>
      <el-button type="danger">拥堵</el-button>
    </div>
    <div ref="mapContainer" class="map-container"></div>
    <ul class="btn-wrap" style="z-index: 99">
      <li class="btn" @click="addRouteType">叠加路况</li>
      <li class="btn" @click="removeRouteType">删除路况</li>
    </ul>
  </div>
</template>

<script>
export default {
  props: {
    cityName: {
      type: String,
      default: null,
    },
  },
  data() {
    return {
      map: null,
    };
  },
  mounted() {
    this.initMap();
    if (this.map) {
      this.map.setTrafficOn(); // 叠加路况图层
    }
  },
  methods: {
    initMap() {
      // 保存 Vue 实例的引用
      var self = this;

      this.map = new BMapGL.Map(this.$refs.mapContainer);
      this.map.enableScrollWheelZoom(true);
      var myGeo = new BMapGL.Geocoder();

      // 将地址解析结果显示在地图上，并调整地图视野
      myGeo.getPoint(
        this.cityName + "市",
        function (point) {
          if (point) {
            // 使用保存的 self 引用来访问 cityName
            self.map.centerAndZoom(point, 12);
            self.map.addOverlay(
              new BMapGL.Marker(point, { title: self.cityName })
            );
          } else {
            alert("您选择的地址没有解析到结果！");
          }
        },
        "北京市"
      );
    },

    addRouteType() {
      if (this.map) {
        this.map.setTrafficOn(); // 叠加路况图层
      }
    },
    removeRouteType() {
      if (this.map) {
        this.map.setTrafficOff(); // 关闭路况图层
      }
    },
  },
};
</script>

<style scoped>
.map-container {
  width: 1400px;
  height: 700px;
}

.btn-wrap {
  position: fixed;
  bottom: 3.5rem;
  left: 3rem;
  padding: 1rem;
  background-color: #fff;
  box-shadow: 0 2px 6px 0 rgba(27, 142, 236, 0.5);
  list-style: none;
}

.btn {
  display: inline-block;
  width: 75px;
  height: 30px;
  background-color: #fff;
  color: rgba(27, 142, 236, 1);
  font-size: 14px;
  border: 1px solid rgba(27, 142, 236, 1);
  border-radius: 5px;
  margin-right: 5px;
  text-align: center;
  line-height: 30px;
  cursor: pointer;
}

.btn:hover {
  background-color: rgba(27, 142, 236, 0.8);
  color: #fff;
}
</style>
