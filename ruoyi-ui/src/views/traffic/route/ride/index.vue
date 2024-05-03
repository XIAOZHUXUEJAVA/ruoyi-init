<template>
  <div>
    <el-form :inline="true" :model="form" ref="form" size="small">
      <el-form-item label="起点">
        <el-input v-model="form.startPoint" placeholder="请输入起点"></el-input>
      </el-form-item>
      <el-form-item label="终点">
        <el-input v-model="form.endPoint" placeholder="请输入终点"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="searchRoute">搜索</el-button>
      </el-form-item>
    </el-form>

    <div id="container"></div>
    <div id="panel"></div>
  </div>
</template>

<script>
export default {
  name: "RidingRouteMap",
  data() {
    return {
      form: {
        startPoint: "",
        endPoint: "",
      },
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
      if (this.form.startPoint && this.form.endPoint) {
        riding.search(this.form.startPoint, this.form.endPoint);
      }
    },
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
