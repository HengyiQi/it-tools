<script setup lang="ts">
import { useHead } from '@vueuse/head';
import AdBanner from '@/components/AdBanner.vue';

useHead({
  title: '关于我们 - 恒仪IT工具箱',
  meta: [
    { name: 'description', content: '恒仪IT工具箱介绍，一个免费的在线开发者工具集合站点。' },
  ],
});
</script>

<template>
  <div class="container" style="max-width:900px;margin:0 auto;padding:24px 16px;">
    <h1 style="font-size:28px;font-weight:600;margin-bottom:24px;color:#1a1a1a;">关于恒仪IT工具箱</h1>
    <p style="color:#888;font-size:13px;margin-bottom:32px;">让开发更高效，让工具更简单</p>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">站点简介</h2>
      <p style="line-height:1.8;color:#555;">
        恒仪IT工具箱是一个个人搭建的免费在线工具集合站点，面向广大开发者和 IT 从业人员，
        提供 JSON 格式化、加密解密、时间转换、编码工具等 80+ 实用功能。
      </p>
      <p style="line-height:1.8;color:#555;">
        本站所有工具均在浏览器本地运行，您的数据不会上传到任何服务器，
        真正保障您的隐私和数据安全。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">核心特色</h2>
      <ul style="line-height:2;color:#555;padding-left:20px;">
        <li>✅ <strong>完全免费</strong> — 所有工具永久免费使用，无任何付费功能</li>
        <li>✅ <strong>隐私安全</strong> — 所有运算在本地浏览器完成，数据不上传</li>
        <li>✅ <strong>开箱即用</strong> — 无需注册登录，打开网页即可使用</li>
        <li>✅ <strong>80+ 工具</strong> — 涵盖编码、加密、网络、数学、文本等多个领域</li>
        <li>✅ <strong>多语言支持</strong> — 支持中文、英文、日文等多种语言</li>
        <li>✅ <strong>深色模式</strong> — 自适应系统主题，保护您的视力</li>
      </ul>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">技术栈</h2>
      <ul style="line-height:2;color:#555;padding-left:20px;">
        <li>🔧 <strong>Vue 3</strong> — 渐进式 JavaScript 框架</li>
        <li>⚡ <strong>Vite</strong> — 下一代前端构建工具</li>
        <li>🎨 <strong>Naive UI</strong> — 灵活的 Vue 3 组件库</li>
        <li>📦 <strong>TypeScript</strong> — 类型安全的开发体验</li>
        <li>🚀 <strong>PWA</strong> — 渐进式 Web 应用支持</li>
        <li>🌐 <strong>UnoCSS</strong> — 即时按需原子化 CSS 引擎</li>
      </ul>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">建站时间</h2>
      <p style="line-height:1.8;color:#555;">
        本站于 2026 年开始建设并持续迭代更新。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">关于广告</h2>
      <p style="line-height:1.8;color:#555;">
        本站完全免费且开源，但需要资金用于服务器托管和域名续费。
        页面预留的广告位用于覆盖建站成本，我们承诺广告不会影响正常使用，
        且所有广告均来自正规广告平台。如果您有任何不适，请通过邮件联系我们。
      </p>
    </section>

    <AdBanner position="tool-bottom" class="mt-24px" />
  </div>
</template>
