<!-- <baidu-map
    class="bm-view"
    :center="center"
    :zoom="zoom"
    :scroll-wheel-zoom="true"
  ></baidu-map> -->
<template>
  <baidu-map
    class="bm-map"
    :center="center"
    :zoom="zoom"
    :scroll-wheel-zoom="true"
  >
    <bm-map-type
      :map-types="['BMAP_HYBRID_MAP', 'BMAP_NORMAL_MAP']"
      anchor="BMAP_ANCHOR_TOP_RIGHT"
    ></bm-map-type>
    <bm-city-list anchor="BMAP_ANCHOR_TOP_LEFT"></bm-city-list>
    <bm-panorama anchor="BMAP_ANCHOR_BOTTOM_RIGHT"></bm-panorama>
    <bm-scale anchor="BMAP_ANCHOR_MIDDLE_RIGHT"></bm-scale>
    <bm-navigation anchor="BMAP_ANCHOR_TOP_RIGHT"></bm-navigation>
  </baidu-map>
</template>

<script>
export default {
  data() {
    return {
      center: { lng: 116.404, lat: 39.915 }, //经纬度
      zoom: 5, //地图展示级别
    };
  },
};
</script>

<style scoped>
.bm-map {
  width: 1330px;
  height: 690px;
  padding-top: 0px;
  padding-left: 0px;
  padding-bottom: 10px;
}
</style>
