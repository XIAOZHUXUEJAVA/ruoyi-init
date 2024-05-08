<template>
  <baidu-map
    :address="address"
    :scroll-wheel-zoom="true"
    :emergency="emergency"
    :categoryName="categoryName"
  >
    <bm-view class="bm-map"></bm-view>
    <bm-local-search
      :keyword="keyword"
      :nearby="nearby"
      :auto-viewport="true"
      :panel="true"
      @infohtmlset="infohtmlset"
    ></bm-local-search>
    <bm-circle :center="nearby.center" :radius="nearby.radius"></bm-circle>
  </baidu-map>
</template>

<script>
import { updateEmergency } from "@/api/emergency/emergency";

export default {
  name: "EmergencyMap",
  props: {
    address: {
      type: Object,
      default: () => ({
        lng: null,
        lat: null,
      }),
    },
    emergency: {
      type: Object,
    },
    categoryName: {
      type: String,
      default: "公安",
    },
  },
  data() {
    return {
      updateForm: null,
      nearby: {
        center: { lng: 116.404, lat: 39.915 },
        radius: 5000,
      },
      keyword: "",
    };
  },
  created() {
    this.handleKeyword(this.categoryName);
    this.nearby.center = this.address;
  },
  methods: {
    handleKeyword(categoryName) {
      if (categoryName === "火灾") {
        this.keyword = "消防";
      } else if (categoryName === "电力") {
        this.keyword = "电网";
      } else if (categoryName === "公共卫生") {
        this.keyword = "医院";
      }
    },
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
          this.emergency.status = "0";
          updateEmergency(this.emergency).then((response) => {
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
