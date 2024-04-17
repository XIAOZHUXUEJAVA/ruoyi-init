<template>
  <div class="bm-view">
    <baidu-map :zoom="zoom" :scroll-wheel-zoom="true" class="map-container">
      <bm-local-search
        :keyword="keyword"
        :auto-viewport="true"
      ></bm-local-search>
    </baidu-map>
  </div>
</template>

<script>
export default {
  name: "AddressMap",
  props: {
    zoom: Number,
    keyword: String,
  },
  mounted() {},
};
</script>

<style scoped>
.bm-view {
  width: 1450px;
  height: 600px;
}
.map-container {
  width: 100%;
  height: 100%;
}
</style>
