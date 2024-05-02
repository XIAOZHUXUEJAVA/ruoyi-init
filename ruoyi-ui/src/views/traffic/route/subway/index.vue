<template>
  <div>
    <div>
      <el-form :inline="true" :model="form" ref="form" size="small">
        <el-form-item label="城市名称">
          <el-input
            v-model="subwayCityName"
            placeholder="请输入城市名称"
          ></el-input>
        </el-form-item>
        <el-form-item label="起点">
          <el-input v-model="start" placeholder="请输入起点"></el-input>
        </el-form-item>
        <el-form-item label="终点">
          <el-input v-model="destination" placeholder="请输入终点"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="searchSubway">搜索</el-button>
        </el-form-item>
      </el-form>
    </div>
    <!-- <div>
      <label for="subwayCityName">城市名称：</label>
      <input type="text" id="subwayCityName" v-model="subwayCityName" />
    </div>
    <div>
      <label for="start">起点：</label>
      <input type="text" id="start" v-model="start" />
    </div>
    <div>
      <label for="destination">终点：</label>
      <input type="text" id="destination" v-model="destination" />
    </div>
    <button @click="searchSubway">搜索</button> -->
    <div id="container"></div>
  </div>
</template>

<script>
export default {
  name: "SubwayMap",

  data() {
    return {
      subwayCityName: "上海",
      start: "",
      destination: "",
    };
  },

  mounted() {
    this.loadSubwayScript().then(() => {
      this.initSubwayMap();
    });
  },

  methods: {
    loadSubwayScript() {
      return new Promise((resolve, reject) => {
        const script = document.createElement("script");
        script.src =
          "http://api.map.baidu.com/api?type=subway&v=1.0&ak=frNrXEk1s6ZtoMNBGQ4SurdCdSaMuDpS";
        script.async = true;
        script.onload = resolve;
        script.onerror = reject;
        document.head.appendChild(script);
      });
    },

    initSubwayMap() {
      const subwayCityName = this.subwayCityName;

      const list = BMapSub.SubwayCitiesList;
      let subwaycity = null;
      for (let i = 0; i < list.length; i++) {
        if (list[i].name === subwayCityName) {
          subwaycity = list[i];
          break;
        }
      }

      if (!subwaycity) {
        this.$message({
          message: "未查询到该城市地铁信息",
          type: "warning",
        });
        return;
      }

      const subway = new BMapSub.Subway("container", subwaycity.citycode);

      const zoomControl = new BMapSub.ZoomControl({
        anchor: BMAPSUB_ANCHOR_BOTTOM_RIGHT,
        offset: new BMapSub.Size(10, 100),
      });
      subway.addControl(zoomControl);

      subway.addEventListener("subwayloaded", () => {
        const drct = new BMapSub.Direction(subway);
        drct.search(this.start, this.destination);
      });
    },

    searchSubway() {
      const { subwayCityName, start, destination } = this;
      this.searchSubwayRoute(subwayCityName, start, destination);
    },

    searchSubwayRoute(subwayCityName, start, destination) {
      const list = BMapSub.SubwayCitiesList;
      let subwaycity = null;
      for (let i = 0; i < list.length; i++) {
        if (list[i].name === subwayCityName) {
          subwaycity = list[i];
          break;
        }
      }

      if (!subwaycity) {
        this.$message({
          message: "未查询到该城市地铁信息",
          type: "warning",
        });
        return;
      }

      const subway = new BMapSub.Subway("container", subwaycity.citycode);

      const zoomControl = new BMapSub.ZoomControl({
        anchor: BMAPSUB_ANCHOR_BOTTOM_RIGHT,
        offset: new BMapSub.Size(10, 100),
      });
      subway.addControl(zoomControl);

      subway.addEventListener("subwayloaded", () => {
        const drct = new BMapSub.Direction(subway);
        drct.search(start, destination);
      });
      subway.addEventListener("directioncomplete", function () {
        var detail = new BMapSub.DetailInfo(subway);
        detail.search(start);
      });
    },
  },
};
</script>

<style scoped>
#container {
  width: 1300px;
  height: 600px;
}
</style>
