<template>
  <div style="height: 400px">
    <el-input
      v-model="prompt"
      placeholder="Enter prompt"
      type="textarea"
      :row="5"
      style="padding-bottom: 10px"
    ></el-input>
    <el-button type="primary" @click="generateText" :disabled="loading"
      >决策支持</el-button
    >
    <el-input
      v-model="generatedText"
      type="textarea"
      :rows="10"
      class="generated-text-input"
      style="padding-top: 10px"
    ></el-input>
    <el-dialog
      :visible="loading"
      title="决策建议生成中，请稍候..."
      :close-on-click-modal="false"
      :show-close="false"
    >
      <el-progress :percentage="progress" status="info" />
    </el-dialog>
  </div>
</template>

<script>
import ChatGPT from "@/api/chatgpt";

export default {
  name: "GPTGenerate",
  props: {
    prompt: {
      type: String,
      default: "",
    },
  },
  data() {
    return {
      generatedText: "",
      loading: false, // 加载中状态
      progress: 0, // 进度百分比
    };
  },
  methods: {
    async generateText() {
      this.loading = true; // 开始加载
      this.progress = 0; // 重置进度
      try {
        const totalSteps = 10; // 总步数，可以根据实际情况调整
        for (let i = 0; i < totalSteps; i++) {
          // 模拟生成进度，每次增加 10%
          this.progress = (i + 1) * (100 / totalSteps);
          await this.sleep(500); // 模拟等待时间，单位为毫秒
        }
        // 生成完成后获取文本
        this.generatedText = await ChatGPT.generateText(this.prompt);
      } catch (error) {
        console.error("Error generating text:", error);
      } finally {
        this.loading = false; // 加载完成
      }
    },
    sleep(ms) {
      return new Promise((resolve) => setTimeout(resolve, ms));
    },
  },
};
</script>

<style scoped></style>
