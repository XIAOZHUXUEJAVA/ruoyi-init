<template>
  <div>
    <!-- <el-input v-model="start" placeholder="请输入起点"></el-input>
    <el-input v-model="end" placeholder="请输入终点"></el-input>
    <el-button type="primary" @click="search">搜索</el-button> -->

    <el-form :inline="true" :model="form" ref="form" size="small">
      <el-form-item label="起点">
        <el-input v-model="start" placeholder="请输入起点"></el-input>
      </el-form-item>
      <el-form-item label="终点">
        <el-input v-model="end" placeholder="请输入终点"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="search">搜索</el-button>
      </el-form-item>
    </el-form>

    <baidu-map>
      <bm-view class="bm-view"></bm-view>

      <bm-transit
        v-if="route"
        :start="start"
        :end="end"
        :auto-viewport="true"
        :panel="true"
      ></bm-transit>
    </baidu-map>
  </div>
</template>

<script>
export default {
  data() {
    return {
      start: "山东建筑大学",
      end: "万达",
      route: false,
    };
  },
  methods: {
    search() {
      if (this.start && this.end) {
        this.route = true;
      } else {
        // 处理输入不完整的情况
        this.route = false;
        alert("请输入起点和终点");
      }
    },
  },
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
