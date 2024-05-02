<template>
  <div>
    <input type="text" v-model="startPoint" placeholder="起点" />
    <input type="text" v-model="endPoint" placeholder="终点" />
    <button @click="searchRoute">搜索</button>
    <div id="container"></div>
    <div id="panel"></div>
  </div>
</template>

<script>
export default {
  name: "RidingRouteMap",
  data() {
    return {
      startPoint: "",
      endPoint: "",
    };
  },
  mounted() {
    this.initMap();
  },
  methods: {
    initMap() {
      var map = new BMapGL.Map("container", {
        panel: "panel",
      });
      map.centerAndZoom(new BMapGL.Point(116.404, 39.915), 14);

      this.map = map;
    },

    searchRoute() {
      var riding = new BMapGL.RidingRoute(this.map, {
        renderOptions: {
          map: this.map,
          autoViewport: true,
          panel: "panel",
        },
      });
      if (this.startPoint && this.endPoint) {
        riding.search(this.startPoint, this.endPoint);
      }
    },

    // searchRoute() {
    //   var start = new BMapGL.Point(116.310791, 40.003419);
    //   var end = new BMapGL.Point(116.386419, 40.003519);
    //   if (this.startPoint && this.endPoint) {
    //     var startKeyword = this.startPoint;
    //     var endKeyword = this.endPoint;
    //     var myGeo = new BMapGL.Geocoder();
    //     myGeo.getPoint(startKeyword, function (point) {
    //       if (point) {
    //         start = point;
    //       }
    //     });
    //     myGeo.getPoint(endKeyword, function (point) {
    //       if (point) {
    //         end = point;
    //       }
    //     });
    //   }
    //   var riding = new BMapGL.RidingRoute(this.map, {
    //     renderOptions: {
    //       map: this.map,
    //       autoViewport: true,
    //       panel: "panel",
    //     },
    //   });
    //   riding.search(start, end);
    // },
  },
};
</script>

<style scoped>
#container {
  width: 1300px;
  height: 600px;
}
#panel {
  height: auto;
  overflow: auto;
}
</style>
