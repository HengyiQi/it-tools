@echo off
chcp 65001 > nul
echo =============================================
echo  恒仪IT工具箱 - Git 提交与推送脚本
echo =============================================
echo.

cd /d "D:\GitHub\it-tools"

echo [1/4] 检查 Git 状态...
git status --short

echo.
echo [2/4] 添加所有更改...
git add .

echo.
echo [3/4] 提交更改...
git commit -m "feat: 全面优化项目 - 合规页面/SEO/广告位/BOM修复

- 新增隐私政策、Cookie政策、免责声明页面
- 修复 index.html 中文化标题和 SEO meta
- 修复 base.layout.vue 底部合规栏（含4个合规链接）
- 修复 Home.page.vue 缺失的 useTracker 导入
- 修复 pnpm-workspace.yaml 格式（避免 monorepo 误判）
- 批量移除所有 .vue/.ts 文件 BOM 字符
- 修复 Home.page.vue 和 tool.layout.vue 广告位
- 完善 Contact.vue 和 About.vue 页面内容
- 补全 9 种语言的 footer 和 ads 翻译
- 删除 pages/About.vue 与 views/About.vue 命名冲突"

echo.
echo [4/4] 推送到 GitHub...
git push origin main

echo.
echo =============================================
echo  完成！请在 Vercel 控制台查看部署状态
echo =============================================
pause
