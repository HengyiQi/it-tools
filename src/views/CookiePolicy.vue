<script setup lang="ts">
import { useHead } from '@vueuse/head';
import AdBanner from '@/components/AdBanner.vue';

useHead({
  title: 'Cookie 政策 - 恒仪IT工具箱',
  meta: [
    { name: 'description', content: '恒仪IT工具箱 Cookie 政策，说明我们如何使用 Cookie 以及您如何管理 Cookie 设置。' },
    { name: 'robots', content: 'noindex, nofollow' },
  ],
});
</script>

<template>
  <div class="container" style="max-width:900px;margin:0 auto;padding:24px 16px;">
    <h1 style="font-size:28px;font-weight:600;margin-bottom:24px;color:#1a1a1a;">Cookie 政策</h1>
    <p style="color:#888;font-size:13px;margin-bottom:32px;">最后更新日期：2026年7月8日</p>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">一、什么是 Cookie？</h2>
      <p style="line-height:1.8;color:#555;">
        Cookie 是一种小型文本文件，网站在您可能访问的每台计算机或其他设备上存储。
        Cookie 有助于网站记住您的偏好、记住您的登录状态，以及帮助我们了解您如何使用我们的网站。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">二、我们使用的 Cookie</h2>
      <h3 style="font-size:16px;font-weight:600;margin:16px 0 8px;color:#444;">2.1 必要 Cookie</h3>
      <p style="line-height:1.8;color:#555;">这些 Cookie 对于网站正常运行是必需的，包括：</p>
      <ul style="line-height:1.8;color:#555;padding-left:20px;">
        <li><strong>locale</strong>：记住您选择的语言偏好</li>
        <li><strong>darkTheme</strong>：记住您的主题设置（深色/浅色模式）</li>
        <li><strong>menuCollapsed</strong>：记住侧边栏菜单的折叠状态</li>
      </ul>
      <h3 style="font-size:16px;font-weight:600;margin:16px 0 8px;color:#444;">2.2 功能性 Cookie</h3>
      <p style="line-height:1.8;color:#555;">这些 Cookie 用于增强网站功能，包括：</p>
      <ul style="line-height:1.8;color:#555;padding-left:20px;">
        <li><strong>favoriteToolsName</strong>：保存您的收藏工具列表</li>
        <li><strong>ad-dismissed-*</strong>：记住您关闭的广告位</li>
      </ul>
      <h3 style="font-size:16px;font-weight:600;margin:16px 0 8px;color:#444;">2.3 第三方 Cookie</h3>
      <p style="line-height:1.8;color:#555;">我们使用的第三方服务可能设置自己的 Cookie，包括：</p>
      <ul style="line-height:1.8;color:#555;padding-left:20px;">
        <li><strong>Google AdSense</strong>：用于广告投放和效果追踪</li>
        <li><strong>Plausible Analytics</strong>：用于网站流量分析</li>
      </ul>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">三、如何管理 Cookie？</h2>
      <p style="line-height:1.8;color:#555;">
        您可以通过浏览器设置来管理或删除 Cookie。大多数浏览器允许您：
      </p>
      <ul style="line-height:1.8;color:#555;padding-left:20px;">
        <li>拒绝设置 Cookie</li>
        <li>删除已有的 Cookie</li>
        <li>设置 Cookie 过期时间</li>
        <li>针对特定网站禁止 Cookie</li>
      </ul>
      <p style="line-height:1.8;color:#555;">
        请注意，禁用 Cookie 可能会影响网站的某些功能正常使用。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">四、Cookie 政策更新</h2>
      <p style="line-height:1.8;color:#555;">
        我们可能会不时更新本 Cookie 政策。任何变更都将在此页面上发布。
        建议您定期查看本页面以了解最新的 Cookie 使用情况。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">五、联系我们</h2>
      <p style="line-height:1.8;color:#555;">
        如果您对本 Cookie 政策有任何疑问，请通过以下方式联系我们：
      </p>
      <p style="line-height:1.8;color:#555;">
        邮箱：<a href="mailto:314654434@qq.com" style="color:#18a058;">314654434@qq.com</a>
      </p>
    </section>

    <AdBanner position="tool-bottom" class="mt-24px" />
  </div>
</template>
