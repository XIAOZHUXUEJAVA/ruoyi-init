<template>
  <div>
    <div ref="map_container" id="map_container"></div>
  </div>
</template>

<script>
import axios from "axios";
import { initMap, purpleStyle } from "./test/common.js";
export default {
  name: "MapComponent",
  data() {
    return {
      map: null,
      view: null,
    };
  },
  mounted() {
    this.initializeMap();
  },
  methods: {
    async initializeMap() {
      var map = initMap({
        tilt: 0,
        heading: 0,
        center: [105.348145, 37.976416],
        zoom: 5,
        style: purpleStyle,
      });

      // 创建九段线
      var pt = new BMapGL.Point(130.943495, 22.781036);
      var myIcon = new BMapGL.Icon(
        "/gl/images/jiuduanxian.png",
        new BMapGL.Size(102, 150)
      );
      var marker = new BMapGL.Marker(pt, {
        icon: myIcon,
        enableDragging: true,
      }); // 创建标注
      map.addOverlay(marker);

      var view = new mapvgl.View({
        map: map,
      });

      try {
        // const response = await fetch(
        //   "/data/chinalocation.json"
        //   // "https://mapv.baidu.com/gl/examples/data/chinalocation.json",
        // );
        const response = await axios.get("/gl/data/chinalocation.json");

        const rs = await response.data;

        var data1 = [];
        var data2 = [];
        var data3 = [];
        for (var i = 0; i < rs[0].length; i++) {
          var geoCoord = rs[0][i].geoCoord;
          data1.push({
            geometry: {
              type: "Point",
              coordinates: geoCoord,
            },
            properties: {
              time: Math.random() * 100,
            },
          });
        }

        for (var i = 0; i < rs[1].length; i++) {
          var geoCoord = rs[1][i].geoCoord;
          data2.push({
            geometry: {
              type: "Point",
              coordinates: geoCoord,
            },
            properties: {
              time: Math.random() * 10,
            },
          });
        }

        for (var i = 0; i < rs[2].length; i++) {
          var geoCoord = rs[2][i].geoCoord;
          data3.push({
            geometry: {
              type: "Point",
              coordinates: geoCoord,
            },
            properties: {
              time: Math.random() * 10,
            },
          });
        }

        view.addLayer(
          new mapvgl.PointLayer({
            blend: "lighter",
            shape: "circle",
            color: "rgba(255, 77, 77, 0.8)", // 点图层1颜色
            data: data1,
            size: 1,
          })
        );

        view.addLayer(
          new mapvgl.PointLayer({
            blend: "lighter",
            shape: "circle",
            color: "rgba(255, 204, 0, 0.6)", // 点图层2颜色
            data: data2,
            size: 1.5,
          })
        );

        view.addLayer(
          new mapvgl.PointLayer({
            blend: "lighter",
            shape: "circle",
            color: "rgba(255, 255, 0, 0.6)", // 点图层3颜色
            data: data3,
            size: 2,
          })
        );

        view.addLayer(
          new mapvgl.PointTripLayer({
            blend: "lighter",
            shape: "circle",
            startTime: 0,
            endTime: 100,
            step: 0.1,
            trailLength: 10,
            color: "rgba(255, 255, 153, 0.5)", // 点动画图层颜色
            data: data1,
            size: 1.5,
          })
        );
      } catch (error) {
        console.error("Error fetching data:", error);
      }
    },
  },
};
</script>

<style scoped>
html,
/* body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
} */
#map_container {
  width: 1330px;
  height: 650px;
  padding-top: 0px;
  padding-left: 0px;
  padding-bottom: 10px;
}
</style>
