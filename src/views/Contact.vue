<script setup lang="ts">
import { useHead } from '@vueuse/head';
import AdBanner from '@/components/AdBanner.vue';

useHead({
  title: '联系我们 - 恒仪IT工具箱',
  meta: [
    { name: 'description', content: '恒仪IT工具箱联系方式，商务合作、广告咨询、意见反馈请通过邮件联系我们。' },
  ],
});
</script>

<template>
  <div class="container" style="max-width:900px;margin:0 auto;padding:24px 16px;">
    <h1 style="font-size:28px;font-weight:600;margin-bottom:24px;color:#1a1a1a;">联系我们</h1>
    <p style="color:#888;font-size:13px;margin-bottom:32px;">我们期待收到您的来信</p>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">商务合作</h2>
      <p style="line-height:1.8;color:#555;">
        如有商务合作、广告投放、技术支持等需求，请发送邮件至：
      </p>
      <p style="line-height:1.8;color:#555;">
        <a href="mailto:314654434@qq.com" style="color:#18a058;font-size:18px;font-weight:500;">
          314654434@qq.com
        </a>
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">反馈与建议</h2>
      <p style="line-height:1.8;color:#555;">
        如果您发现了 Bug、有任何功能建议，或是对网站体验有任何改进意见，
        欢迎通过以下方式反馈：
      </p>
      <ul style="line-height:1.8;color:#555;padding-left:20px;">
        <li>发送邮件至上述邮箱，注明"功能建议"或"Bug报告"</li>
        <li>在 GitHub 仓库提交 Issue</li>
      </ul>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">响应时间</h2>
      <p style="line-height:1.8;color:#555;">
        我们会在收到邮件后的 1-3 个工作日内回复。
        由于本站为个人运营，回复可能有所延迟，感谢您的耐心和理解。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">隐私承诺</h2>
      <p style="line-height:1.8;color:#555;">
        我们仅通过邮件与您沟通，不会收集手机号等隐私信息。
        您的邮件内容和联系方式将被严格保密，仅用于本站运营改进。
      </p>
    </section>

    <AdBanner position="tool-bottom" class="mt-24px" />
  </div>
</template>
