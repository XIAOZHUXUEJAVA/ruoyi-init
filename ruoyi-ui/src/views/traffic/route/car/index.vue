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
      <el-form-item>
        <el-button @click="changePolicy('BMAP_DRIVING_POLICY_LEAST_DISTANCE')"
          >最短距离</el-button
        >
      </el-form-item>
      <el-form-item>
        <el-button @click="changePolicy('BMAP_DRIVING_POLICY_LEAST_TIME')"
          >最短时间</el-button
        >
      </el-form-item>
    </el-form>

    <baidu-map>
      <bm-view class="bm-view"></bm-view>

      <bm-driving
        v-if="route"
        :start="start"
        :end="end"
        :auto-viewport="true"
        :policy="currentPolicy"
        :panel="true"
        @searchcomplete="handleSearchComplete"
      >
      </bm-driving>
      <bml-lushu
        @stop="reset"
        :path="path"
        :icon="icon"
        :play="play"
        :rotation="true"
      >
      </bml-lushu>
    </baidu-map>
  </div>
</template>

<script>
import { BmlLushu } from "vue-baidu-map";
export default {
  components: {
    BmlLushu,
  },
  data() {
    return {
      start: "",
      end: "",
      route: false,
      currentPolicy: "BMAP_DRIVING_POLICY_LEAST_DISTANCE", // 默认为最短距离
      play: true,
      path: [],
      icon: {
        url: "http://api.map.baidu.com/library/LuShu/1.2/examples/car.png",
        size: { width: 52, height: 26 },
        opts: { anchor: { width: 27, height: 13 } },
      },
    };
  },
  methods: {
    reset() {
      this.play = false;
    },
    handleSearchComplete(res) {
      this.path = res.getPlan(0).getRoute(0).getPath();
    },
    search() {
      if (this.start && this.end) {
        this.route = true;
      } else {
        // 处理输入不完整的情况
        this.route = false;
        alert("请输入起点和终点");
      }
    },
    async changePolicy(policy) {
      if (this.start && this.end) {
        this.currentPolicy = policy;
        this.route = true; // 重新搜索路径
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
