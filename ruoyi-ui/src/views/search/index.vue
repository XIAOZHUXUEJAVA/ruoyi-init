<template>
  <div>
    <el-form :inline="true" :model="form" ref="form" size="small">
      <el-form-item label="关键词">
        <el-input v-model="keyword" placeholder="请输入关键词"></el-input>
      </el-form-item>
      <el-form-item label="地区">
        <el-input v-model="location" placeholder="请输入地区"></el-input>
      </el-form-item>
    </el-form>

    <baidu-map id="bm-map">
      <bm-view class="map"></bm-view>
      <bm-local-search
        :keyword="keyword"
        :auto-viewport="true"
        :location="location"
      ></bm-local-search>
    </baidu-map>
  </div>
</template>

<script>
export default {
  data() {
    return {
      location: "北京",
      keyword: "百度",
    };
  },
};
</script>

<style scoped>
#bm-map {
  width: 1330px;
  height: 1000px;
  padding-top: 0px;
  padding-left: 0px;
  padding-bottom: 10px;
}
.map {
  width: 1300px;
  height: 400px;
}
</style>
