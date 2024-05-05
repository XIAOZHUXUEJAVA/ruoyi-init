<template>
  <div>
    <div class="search-container">
      <el-input
        class="input-address"
        v-model="address"
        placeholder="输入地址"
        @input="suggestAddress"
        style="width: 500px"
      ></el-input>
      <el-button @click="locateAddress">查找</el-button>
    </div>
    <ul v-if="suggestions.length > 0">
      <li
        v-for="(item, index) in suggestions"
        :key="index"
        @click="selectSuggestion(item)"
      >
        {{ item.title }}
      </li>
    </ul>
    <div id="mapContainer"></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      address: "济南融创茂", // 用户输入的地址
      suggestions: [], // 地址提示列表
      map: null, // 地图实例
    };
  },
  mounted() {
    this.initMap();
  },
  methods: {
    initMap() {
      // 在地图容器中创建地图实例
      this.map = new BMapGL.Map("mapContainer", { showControls: true });
      this.map.enableScrollWheelZoom(true);
    },
    suggestAddress() {
      var self = this;
      // 使用地点搜索服务进行关键字提示
      var local = new BMapGL.LocalSearch("北京市", {
        onSearchComplete: function (results) {
          if (local.getStatus() == BMAP_STATUS_SUCCESS) {
            var suggestions = [];
            for (var i = 0; i < results.getCurrentNumPois(); i++) {
              var poi = results.getPoi(i);
              suggestions.push({ title: poi.title, point: poi.point });
            }
            self.suggestions = suggestions;
          }
        },
      });
      local.search(this.address);
    },
    selectSuggestion(suggestion) {
      this.address = suggestion.title;
      this.suggestions = [];
      this.map.centerAndZoom(suggestion.point, 19);
    },
    locateAddress() {
      var self = this;
      // 使用地理编码服务将地址转换为经纬度
      var geocoder = new BMapGL.Geocoder();
      geocoder.getPoint(
        this.address,
        function (point) {
          if (point) {
            // 设置地图中心点和缩放级别
            self.map.centerAndZoom(point, 19);

            // 添加标注
            var marker = new BMapGL.Marker(point);
            self.map.addOverlay(marker);

            // 启用鼠标滚轮缩放
            self.map.enableScrollWheelZoom(true);
          } else {
            alert("您选择地址没有解析到结果！");
          }
        },
        "北京市"
      ); // 这里填写你的地址所在的城市
    },
  },
};
</script>

<style scoped>
#mapContainer {
  width: 1330px;
  height: 600px;
  margin-top: 10px;
}
ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
  border: 1px solid #ccc;
}
li {
  padding: 5px 10px;
  cursor: pointer;
  background-color: #f9f9f9;
}
li:hover {
  background-color: #ddd;
}

.search-container {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}
.search-container el-input {
  flex: 1;
  margin-right: 10px;
}
.input-address {
  padding-right: 20px;
}
</style>
