<template>
  <div>
    <!-- <div class="search-container">
      <input type="text" v-model="searchAddress" placeholder="请输入地址" />
      <button @click="searchParking">搜索</button>
    </div> -->
    <div class="search-container">
      <el-input
        v-model="searchAddress"
        placeholder="请输入地址"
        style="width: 300px; padding-right: 30px"
      ></el-input>
      <el-button @click="searchParking" style="height: 35px">搜索</el-button>
    </div>
    <div class="info">
      <p>
        车位：<span>{{ spotName }}</span>
      </p>
      <p>
        状态：<span>{{ spotState }}</span>
      </p>
    </div>
    <div id="container"></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchAddress: "", // 存储用户输入的地址
      spotName: "-",
      spotState: "-",
      map: null, // 添加地图对象的引用
    };
  },
  mounted() {
    this.initMap();
  },
  methods: {
    initMap() {
      const map = new BMapGL.Map("container", {
        indoorControl: true,
        showControls: true,
      });
      const center = new BMapGL.Point(116.33292006683187, 39.79396372676026);
      map.centerAndZoom(center, 19);
      map.enableScrollWheelZoom();
      map.disablePinchToZoom();
      map.disableRotateGestures();
      map.setTilt(60);
      this.map = map; // 将地图对象保存到组件的属性中
    },
    searchParking() {
      // 获取用户输入的地址
      const address = this.searchAddress.trim();
      if (address === "") {
        alert("请输入地址");
        return;
      }

      // 使用地图API进行地址搜索，获取停车位信息
      const localSearch = new BMapGL.LocalSearch("北京市", {
        onSearchComplete: (results) => {
          if (localSearch.getStatus() == BMAP_STATUS_SUCCESS) {
            const firstResult = results.getPoi(0);
            if (firstResult) {
              const point = firstResult.point;
              const parking = new BMapGL.ParkingSpot({
                point: point,
                callback: (res) => {
                  this.spotName = res.properties.name;
                  this.spotState = res.state;
                  console.log(this.spotName);
                  console.log(this.spotState);
                },
              });
              // this.map.clearOverlays(); // 清除地图上原有的标记
              // this.map.addOverlay(parking); // 在地图上标记停车位
              this.map.addParkingSpot(parking);
              this.map.centerAndZoom(point, 19); // 将地图视角定位到搜索到的地址的位置
            } else {
              alert("未找到该地址的停车位信息");
            }
          } else {
            alert("地址搜索失败，请稍后重试");
          }
        },
      });

      localSearch.search(address);
    },
  },
};
</script>

<style scoped>
body,
html {
  overflow: hidden;
  height: 100%;
  margin: 0;
  padding: 0;
}
#container {
  /* width: 100%; */
  height: 800px;
  /* color:''#657d95'' */
}
.info {
  z-index: 999;
  width: auto;
  padding: 0 10px;
  margin-left: 1.25rem;
  position: fixed;
  bottom: 1rem;
  background-color: #fff;
  border-radius: 0.25rem;
  line-height: 24px;
  font-size: 14px;
  color: #666;
  box-shadow: 0 2px 6px 0 rgba(27, 142, 236, 0.5);
}
.search-container {
  position: absolute;
  top: 10px;
  left: 10px;
  z-index: 1000;
}
.search-container input {
  padding: 5px;
}
.search-container button {
  padding: 5px 10px;
}
</style>
