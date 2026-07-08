<script setup lang="ts">
import { useHead } from '@vueuse/head';
import AdBanner from '@/components/AdBanner.vue';

useHead({
  title: '隐私政策 - 恒仪IT工具箱',
  meta: [
    { name: 'description', content: '恒仪IT工具箱隐私政策，说明我们如何收集、使用和保护您的个人信息。' },
    { name: 'robots', content: 'noindex, nofollow' },
  ],
});
</script>

<template>
  <div class="container" style="max-width:900px;margin:0 auto;padding:24px 16px;">
    <h1 style="font-size:28px;font-weight:600;margin-bottom:24px;color:#1a1a1a;">隐私政策</h1>
    <p style="color:#888;font-size:13px;margin-bottom:32px;">最后更新日期：2026年7月8日</p>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">一、总则</h2>
      <p style="line-height:1.8;color:#555;">
        恒仪IT工具箱（以下简称"本站"）尊重并保护所有使用本网站用户的个人隐私。
        本隐私政策旨在清晰说明本站如何处理和使用您的个人信息。
        请您在使用本站服务前，仔细阅读并了解本隐私政策。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">二、信息收集与使用</h2>
      <h3 style="font-size:16px;font-weight:600;margin:16px 0 8px;color:#444;">2.1 本地处理原则</h3>
      <p style="line-height:1.8;color:#555;">
        本站提供的所有在线工具（包括但不限于JSON格式化、Base64编解码、Hash计算、正则表达式测试、日期转换等）
        均在您的浏览器本地完成运算。您的输入数据、文本内容、文件信息<strong>不会</strong>被上传至任何服务器。
      </p>
      <h3 style="font-size:16px;font-weight:600;margin:16px 0 8px;color:#444;">2.2 自动收集的信息</h3>
      <p style="line-height:1.8;color:#555;">
        出于网站运营和安全需要，我们可能通过第三方服务自动收集以下非个人信息：
      </p>
      <ul style="line-height:1.8;color:#555;padding-left:20px;">
        <li>访问日志（IP地址、浏览器类型、访问时间、访问页面等）</li>
        <li>Cookie 和类似技术收集的设备信息</li>
        <li>第三方广告投放商收集的浏览行为数据</li>
      </ul>
      <h3 style="font-size:16px;font-weight:600;margin:16px 0 8px;color:#444;">2.3 第三方服务</h3>
      <p style="line-height:1.8;color:#555;">
        本站使用 Google AdSense 等第三方广告服务。这些服务商可能会使用 Cookie 和网页信标等技术，
        根据您的浏览记录在您访问的其他网站投放个性化广告。您可以根据 Google AdSense 隐私政策
        <a href="https://www.google.com/policies/privacy/" target="_blank" rel="noopener" style="color:#18a058;">
          https://www.google.com/policies/privacy/
        </a>
        了解更多信息并选择退出。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">三、Cookie 的使用</h2>
      <p style="line-height:1.8;color:#555;">
        本站使用 Cookie 和类似技术来提升用户体验。Cookie 是网站存储在您设备上的小文件，
        用于记住您的偏好设置、登录状态等信息。您可以随时在浏览器设置中禁用或删除 Cookie，
        但这可能会影响部分功能的正常使用。
      </p>
      <p style="line-height:1.8;color:#555;">
        第三方广告商也可能在其服务器上设置 Cookie，用于广告效果追踪和个性化广告展示。
        本站不对第三方 Cookie 的使用承担责任。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">四、信息共享与披露</h2>
      <p style="line-height:1.8;color:#555;">
        未经您的同意，本站不会主动向任何第三方共享您的个人信息。
        但在以下情况下，我们可能会共享您的信息：
      </p>
      <ul style="line-height:1.8;color:#555;padding-left:20px;">
        <li>根据法律法规或政府要求必须披露</li>
        <li>为保护本站及用户的安全权益</li>
        <li>为执行本站的用户协议或其他相关政策</li>
      </ul>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">五、信息安全</h2>
      <p style="line-height:1.8;color:#555;">
        本站采用行业通用的安全措施来保护您的个人信息。但由于互联网的开放性特征，
        我们无法保证信息传输和存储的绝对安全。如您发现任何安全漏洞，请及时联系本站。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">六、未成年人保护</h2>
      <p style="line-height:1.8;color:#555;">
        本站主要面向成年开发者和技术人员。如果您未满18周岁，请在监护人的指导下使用本站服务。
        我们不会故意收集未成年人的个人信息。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">七、政策更新</h2>
      <p style="line-height:1.8;color:#555;">
        本站有权随时修改本隐私政策。修改后的政策将在本页面上公布，
        不再另行单独通知。请您定期查阅本页面以了解最新的隐私政策。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">八、联系我们</h2>
      <p style="line-height:1.8;color:#555;">
        如果您对本隐私政策有任何疑问或建议，请通过以下方式联系我们：
      </p>
      <p style="line-height:1.8;color:#555;">
        邮箱：<a href="mailto:314654434@qq.com" style="color:#18a058;">314654434@qq.com</a>
      </p>
    </section>

    <!-- 隐私页面底部广告位 -->
    <AdBanner position="tool-bottom" class="mt-24px" />
  </div>
</template>
