<template>
  <baidu-map :address="address" :scroll-wheel-zoom="true" :accident="accident">
    <bm-view class="bm-map"></bm-view>
    <bm-local-search
      keyword="交警"
      :nearby="nearby"
      :auto-viewport="true"
      :panel="true"
      @infohtmlset="infohtmlset"
    ></bm-local-search>
    <bm-circle :center="nearby.center" :radius="nearby.radius"></bm-circle>
  </baidu-map>
</template>

<script>
import { updateAccident } from "@/api/traffic/accident";

export default {
  name: "TrafficAccident",
  props: {
    address: {
      type: Object,
      default: () => ({
        lng: null,
        lat: null,
      }),
    },
    accident: {
      type: Object,
    },
  },
  data() {
    return {
      updateForm: null,
      nearby: {
        center: { lng: 116.404, lat: 39.915 },
        radius: 1000,
      },
    };
  },
  created() {
    this.nearby.center = this.address;
  },
  methods: {
    infohtmlset(e) {
      const prompt = "是否通知" + e.title + "前往现场处理事故?";
      this.$confirm(prompt, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning",
      })
        .then(() => {
          this.$message({
            type: "success",
            message: "通知成功!",
          });
          this.accident.status = "0";
          updateAccident(this.accident).then((response) => {
            this.$modal.msgSuccess("修改成功");
            this.open = false;
          });
          this.$emit("update-list", "success");
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消通知",
          });
        });
    },
  },
};
</script>
<style scoped>
.bm-map {
  width: 1330px;
  height: 650px;
  padding-top: 0px;
  padding-left: 0px;
  padding-bottom: 10px;
}
</style>
