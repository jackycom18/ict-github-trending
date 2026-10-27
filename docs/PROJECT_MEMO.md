# 项目：GitHub Trending 每日分析

> 最后更新：2026-10-27

## 项目总览

- 目标：完成华为 ICT 1.6 练手题，按每天 08:00 自动生成 GitHub Trending 中文日报与 dashboard。
- 技术栈：Node.js、原生 HTML/CSS/JavaScript、公开 GitHub 页面。
- 运行：`node scripts/run-analysis.mjs --period daily --output-dir reports/github-trending`。
- 本地触发：`powershell -File run-scheduled.ps1 -Period daily`。
- 入口：`scripts/run-analysis.mjs`。

## 当前状态

- 已完成：官方分析技能、抓取、中文报告、缓存和 dashboard。
- 已完成：20 项单元测试。
- 已完成：2026-10-27 真实 Daily 抓取，14 个项目和 4 个重点关注项目。
- 已完成：浏览器截图验证。
- 已完成：独立 GitHub 仓库推送。
- 远程仓库：https://github.com/jackycom18/ict-github-trending
- 下一步：在码道 IDE 创建每天 08:00 的定时任务。
- 卡点/风险：码道“定时任务”是 IDE 内部功能，创建与立即执行入口必须由用户在客户端操作。

## 需求与约定

- 只使用免费资源。
- 定时任务每天 08:00，输出日报和 dashboard。
- dashboard 与 Markdown 使用同一份增强缓存，避免两套统计口径。
- 任务最多同时存在 3 个，执行区间不超过 7 天。

## 待办 / 已知问题

- [x] 完成真实日报和 dashboard。
- [x] 推送到独立个人仓库。
- [ ] 在码道定时任务页面创建“GitHub Trending 每日分析”。
- [ ] 点击一次“立即执行”并确认执行记录。

## 版本历史

- 2026-10-27：导入分析技能，生成真实日报、dashboard、定时配置和执行说明。
