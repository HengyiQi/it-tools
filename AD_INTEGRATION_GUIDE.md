# IT-Tools 广告集成指南

## 📋 概述

本文档说明如何在 IT-Tools 项目中管理和配置广告位。

## 🎯 广告位置

项目中共有 **4 个广告位置**：

| 位置 | 标识 | 描述 | 显示条件 |
|------|------|------|----------|
| 首页顶部 | `home-top` | 首页工具卡片上方 | 默认显示 |
| 首页底部 | `home-bottom` | 首页所有工具列表下方 | 默认显示 |
| 工具侧边栏 | `tool-sidebar` | 工具页面右侧（仅桌面端） | 屏幕宽度 > 1024px |
| 工具底部 | `tool-bottom` | 工具页面底部 | 默认显示 |

## 🔧 如何插入广告代码

### 方法一：直接在组件中插入

打开对应的页面文件，在 `<AdBanner>` 组件的默认插槽中添加您的广告代码：

```vue
<!-- src/pages/Home.page.vue -->
<AdBanner position="home-top" @click="handleAdClick">
  <!-- 在这里插入您的广告代码 -->
  <ins class="adsbygoogle"
       style="display:block"
       data-ad-client="ca-pub-XXXXXXXXXXXXXXXX"
       data-ad-slot="XXXXXXXXXX"
       data-ad-format="auto"></ins>
  <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
</AdBanner>
```

### 方法二：通过环境变量控制显示

在 `.env` 或 Vercel 环境变量中设置：

```bash
# 控制是否显示广告（默认 false）
VITE_SHOW_ADS=true

# 控制特定广告位
VITE_SHOW_HOME_TOP_AD=true
VITE_SHOW_HOME_BOTTOM_AD=true
VITE_SHOW_TOOL_SIDEBAR_AD=true
VITE_SHOW_TOOL_BOTTOM_AD=true
```

## 📊 广告追踪

所有广告点击都会通过 Plausible 追踪（如果启用了追踪）：

```typescript
// 在 Home.page.vue 中
function handleAdClick() {
  tracker.trackEvent({ eventName: 'Home Top Ad Clicked' });
}
```

## 🎨 自定义广告样式

### 修改广告容器样式

编辑 `src/components/AdBanner.vue`：

```less
.ad-banner {
  // 自定义背景色
  background: linear-gradient(135deg, #your-color 0%, #your-color2 100%);
  
  // 自定义圆角
  border-radius: 12px;
  
  // 自定义内边距
  padding: 20px;
}
```

### 添加广告间距

```vue
<AdBanner position="home-top" class="my-16px" />
```

## 🌍 国际化

广告相关文案已添加到所有语言文件：

- `locales/en.yml` - 英语
- `locales/zh.yml` - 中文
- `locales/fr.yml` - 法语
- `locales/de.yml` - 德语
- `locales/es.yml` - 西班牙语
- `locales/pt.yml` - 葡萄牙语
- `locales/no.yml` - 挪威语
- `locales/uk.yml` - 乌克兰语
- `locales/vi.yml` - 越南语

## 🚀 部署到 Vercel

### 1. 推送代码到 GitHub

```bash
cd D:\GitHub\it-tools
git add .
git commit -m "feat: 集成广告功能"
git push origin main
```

### 2. Vercel 自动部署

Vercel 会检测到 GitHub 推送并自动：
- 运行 `pnpm install --frozen-lockfile`
- 运行 `pnpm build`
- 部署到生产环境

### 3. 配置环境变量（可选）

在 Vercel 控制台中添加：
```
VITE_SHOW_ADS = true
VITE_TRACKER_ENABLED = true
```

## ⚠️ 注意事项

1. **广告关闭记忆**：用户关闭的广告位会通过 `localStorage` 记住，刷新页面后不会重新显示
2. **移动端适配**：侧边栏广告在小屏幕上自动隐藏
3. **深色模式**：广告组件支持深色模式自适应
4. **无障碍访问**：添加了 `role="complementary"` 和 `aria-label` 属性

## 📝 常用广告平台接入

### Google AdSense

```vue
<AdBanner position="home-top">
  <ins class="adsbygoogle"
       style="display:block"
       data-ad-client="ca-pub-YOUR_ID"
       data-ad-slot="YOUR_SLOT"
       data-ad-format="auto"
       data-full-width-responsive="true"></ins>
  <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
</AdBanner>
```

### 百度联盟

```vue
<AdBanner position="home-top">
  <ins class="bdcs-main"
       data-cpid="YOUR_CPID"
       data-ctid="YOUR_CTID"
       data-psid="YOUR_PSID"></ins>
  <script>var bdcs = document.createElement('script');
  bdcs.src = 'https://dss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/js/search/ecso/ecso_v3.1.2.js';
  document.getElementsByTagName('head')[0].appendChild(bdcs);</script>
</AdBanner>
```

## 🆘 故障排除

### 广告不显示

1. 检查是否在组件中正确插入了广告代码
2. 检查浏览器控制台是否有错误
3. 确认 `localStorage` 中没有被禁用
4. 检查网络请求是否被广告拦截器阻止

### 样式异常

1. 检查 Scoped CSS 是否冲突
2. 确认 Less 变量是否正确导入
3. 检查响应式断点设置

---

**最后更新**：2026-07-07
**维护者**：IT-Tools 开发团队
