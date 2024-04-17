<template>
  <!-- <baidu-map
    class="bm-view"
    :center="center"
    :zoom="zoom"
    :scroll-wheel-zoom="true"
  ></baidu-map> -->
  <div class="bm-view">
    <baidu-map
      :center="center"
      :zoom="zoom"
      :scroll-wheel-zoom="true"
      class="map-container"
    >
      <!-- 添加标点 -->
      <bm-marker
        :position="center"
        :dragging="true"
        @click="getLocation"
        animation="BMAP_ANIMATION_BOUNCE"
      >
        <bm-label
          content=""
          :labelStyle="{ color: 'red', fontSize: '24px' }"
          :offset="{ width: -35, height: 30 }"
        />
      </bm-marker>
      <bm-local-search
        :keyword="keyword"
        :auto-viewport="true"
      ></bm-local-search>

      <bm-info-window
        :position="{ lng: lng, lat: lat }"
        :show="infoWindowShow"
        @clickclose="infoWindowClose"
      >
        <div style="margin-bottom: 8px">经度: {{ lng }}</div>
        <div>纬度: {{ lat }}</div>
      </bm-info-window>
    </baidu-map>
  </div>
</template>

<script>
export default {
  name: "MapComponent",
  props: {
    center: Object,
    zoom: Number,
    markers: Array,
    keyword: String,
  },
  data() {
    return {
      infoWindowShow: false,
      lng: "",
      lat: "",
    };
  },
  methods: {
    getLocation(e) {
      this.lng = e.point.lng;
      this.lat = e.point.lat;
      this.infoWindowShow = true;
    },
    infoWindowClose() {
      this.lat = "";
      this.lng = "";
      this.infoWindowShow = false;
    },
  },
};
</script>

<style>
.bm-view {
  width: 1450px;
  height: 600px;
}
.map-container {
  width: 100%;
  height: 100%;
}
</style>
