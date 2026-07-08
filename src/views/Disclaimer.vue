<script setup lang="ts">
import { useHead } from '@vueuse/head';
import AdBanner from '@/components/AdBanner.vue';

useHead({
  title: '免责声明 - 恒仪IT工具箱',
  meta: [
    { name: 'description', content: '恒仪IT工具箱免责声明，说明本站服务的免责条款和使用限制。' },
    { name: 'robots', content: 'noindex, nofollow' },
  ],
});
</script>

<template>
  <div class="container" style="max-width:900px;margin:0 auto;padding:24px 16px;">
    <h1 style="font-size:28px;font-weight:600;margin-bottom:24px;color:#1a1a1a;">免责声明</h1>
    <p style="color:#888;font-size:13px;margin-bottom:32px;">最后更新日期：2026年7月8日</p>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">一、服务声明</h2>
      <p style="line-height:1.8;color:#555;">
        恒仪IT工具箱（以下简称"本站"）提供的所有在线工具和服务均按"原样"提供，
        不提供任何形式的明示或暗示保证，包括但不限于适销性、特定用途适用性和不侵权的保证。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">二、数据安全</h2>
      <p style="line-height:1.8;color:#555;">
        本站承诺所有工具运算均在您的浏览器本地完成，您的输入数据不会被上传至任何服务器。
        但我们无法完全排除因技术故障、网络攻击或不可抗力因素导致的数据安全风险。
        请您在使用本站服务时，避免输入高度敏感的个人信息或商业机密。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">三、第三方服务</h2>
      <p style="line-height:1.8;color:#555;">
        本站可能包含指向第三方网站的链接，或使用第三方提供的服务（如广告投放、数据分析等）。
        我们对这些第三方网站或服务的内容、隐私政策或操作不承担任何责任。
        您与第三方的任何往来或交易，均由您自行承担风险。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">四、广告内容</h2>
      <p style="line-height:1.8;color:#555;">
        本站通过第三方广告服务商展示广告。广告内容的准确性和可靠性由广告主负责，
        与本站无关。点击广告即表示您同意遵守相关广告商的条款和条件。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">五、责任限制</h2>
      <p style="line-height:1.8;color:#555;">
        在法律允许的最大范围内，本站及其运营者不对因使用或无法使用本站服务而产生的
        任何直接、间接、附带、特殊或后果性的损害承担责任，包括但不限于数据丢失、
        利润损失或业务中断。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">六、服务变更</h2>
      <p style="line-height:1.8;color:#555;">
        本站保留随时修改、暂停或终止部分或全部服务的权利，无需事先通知。
        我们致力于持续改进服务质量，但不对服务的连续性、及时性做出任何保证。
      </p>
    </section>

    <section style="margin-bottom:28px;">
      <h2 style="font-size:20px;font-weight:600;margin-bottom:12px;color:#333;">七、适用法律</h2>
      <p style="line-height:1.8;color:#555;">
        本免责声明受中华人民共和国法律管辖。如您对本声明有任何异议，
        请立即停止使用本站服务。继续使用即视为您已阅读并同意本声明的全部内容。
      </p>
    </section>

    <AdBanner position="tool-bottom" class="mt-24px" />
  </div>
</template>
