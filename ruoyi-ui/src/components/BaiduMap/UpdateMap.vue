<template>
  <div>
    <baidu-map
      style="display: flex; flex-direction: column-reverse"
      id="allmap"
      :center="center"
      :zoom="zoom"
      @click="getLocation"
      @ready="mapReady"
      :scroll-wheel-zoom="true"
    >
      <div style="display: flex; justify-content: center; margin: 15px">
        <bm-auto-complete
          v-model="searchJingwei"
          :sugStyle="{ zIndex: 999999 }"
        >
          <el-input
            v-model="searchJingwei"
            style="width: 300px; margin-right: 15px"
            placeholder="输入地址"
          ></el-input>
        </bm-auto-complete>
        <el-button type="primary" @click="getBaiduMapPoint">搜索</el-button>
      </div>
      <bm-map-type
        :map-types="['BMAP_NORMAL_MAP', 'BMAP_HYBRID_MAP']"
        anchor="BMAP_ANCHOR_TOP_LEFT"
      ></bm-map-type>
      <bm-marker
        v-if="infoWindowShow"
        :position="{ lng: longitude, lat: latitude }"
      >
        <bm-label
          content=""
          :labelStyle="{ color: 'red', fontSize: '24px' }"
          :offset="{ width: -35, height: 30 }"
        />
      </bm-marker>
      <bm-info-window
        :position="{ lng: longitude, lat: latitude }"
        :show="infoWindowShow"
        @clickclose="infoWindowClose"
      >
        <p>纬度:{{ this.latitude }}</p>
        <p>经度:{{ this.longitude }}</p>
      </bm-info-window>
    </baidu-map>
  </div>
</template>

<script>
export default {
  props: {
    center: Object,
    zoom: Number,
  },
  data() {
    return {
      searchJingwei: "",
      infoWindowShow: false,
      longitude: "",
      latitude: "",
      point: "",
      form: {
        location: "", // 初始化经纬度为空字符串
      },
    };
  },
  methods: {
    updateFormLocation() {
      this.form.location = `${this.longitude},${this.latitude}`;
      this.$emit("update-location", this.form.location);
    },
    //地图初始化
    mapReady({ BMap, map }) {
      // 选择一个经纬度作为中心点
      map.centerAndZoom(this.point, this.zoom);
      this.BMap = BMap;
      this.map = map;
    },
    //点击获取经纬度
    getLocation(e) {
      this.longitude = e.point.lng;
      this.latitude = e.point.lat;
      this.infoWindowShow = true;
    },
    getBaiduMapPoint() {
      let that = this;
      let myGeo = new this.BMap.Geocoder();
      myGeo.getPoint(this.searchJingwei, function (point) {
        if (point) {
          console.log(point);
          that.map.centerAndZoom(point, 15);
          that.latitude = point.lat;
          that.longitude = point.lng;
          that.updateFormLocation();
          that.infoWindowShow = true;
        }
      });
    },
    //信息窗口关闭
    infoWindowClose() {
      this.latitude = "";
      this.longitude = "";
      this.infoWindowShow = false;
    },
  },
};
</script>

<style lang="scss" scoped>
#allmap {
  height: 450px;
  width: 100%;
  margin: 10px 0;
}
</style>
