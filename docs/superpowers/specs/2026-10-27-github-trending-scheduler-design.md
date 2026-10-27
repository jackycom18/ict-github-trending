# GitHub Trending 每日分析定时任务设计

> 目标判据：华为 ICT 1.6 实验手册和用户“只使用免费资源”的约束。

## 目标

使用 `analyze-github-trending` 技能抓取 GitHub Trending，生成中文 Markdown 日报和同步 dashboard。任务设计为每天 08:00 执行，全部在本地运行，不使用云服务器、数据库或付费模型。

## 数据链路

1. 抓取 GitHub Trending Daily 页面。
2. 提取项目名称、描述、语言、Star、Fork、趋势增量和贡献者。
3. 读取项目 README，生成一句话解读与 What / How / Why 分析。
4. 输出中文 Markdown 日报。
5. 从同一份增强缓存生成 dashboard 和历史快照，确保两种视图结论一致。

## 定时配置

- 名称：`GitHub Trending 每日分析`
- 频率：每天 08:00
- 时区：Asia/Shanghai
- 命令：`node scripts/run-analysis.mjs --period daily`
- 输出：
  - `reports/github-trending/<date>-daily.md`
  - `reports/github-trending/cache/<date>/`
  - `reports/github-trending/dashboard/index.html`

## 文件结构

- `SKILL.md`：技能发现与执行约束。
- `scripts/run-analysis.mjs`：正式分析入口。
- `scripts/analysis-core.mjs`：抓取、解析、分析和 Markdown 生成。
- `scripts/dashboard/`：dashboard 数据模型与渲染器。
- `assets/dashboard/`：本地样式和内联图形资源。
- `scheduler-config.json`：码道定时任务参数。
- `run-scheduled.ps1`：本地立即执行脚本。
- `reports/github-trending/`：真实运行产物。

## 验证

- 技能单元测试通过。
- 使用 `--period daily` 生成真实日报和 dashboard。
- Markdown 包含趋势洞察与项目核心价值。
- dashboard 页面能正常加载且无外部依赖。
- 定时配置为每天 08:00，周期不超过项目限制。
