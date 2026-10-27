# 代码地图

> 最后更新：2026-10-27

## 总体结构

```text
github-trending-dashboard/
├─ SKILL.md                    # 技能契约
├─ scripts/
│  ├─ run-analysis.mjs         # 分析入口
│  ├─ analysis-core.mjs        # 抓取、解析、分析与 Markdown
│  └─ dashboard/               # dashboard 数据与渲染
├─ assets/dashboard/           # 本地样式和 SVG
├─ reports/github-trending/    # 真实报告、缓存和 dashboard
├─ scheduler-config.json       # 码道定时任务参数
├─ run-scheduled.ps1           # 本地立即执行入口
└─ docs/                       # 配置和交接文档
```

## 逐文件核心内容

### `scripts/run-analysis.mjs`

- 用途：解析周期参数并启动正式分析。
- 输入：`--period daily|weekly|monthly|all` 和 `--output-dir`。
- 输出：Markdown、缓存和 dashboard。

### `scripts/analysis-core.mjs`

- 用途：抓取 GitHub Trending，补全 README 证据并生成中文内容。
- 注意：只读取公开页面，不调用付费模型。

### `reports/github-trending/dashboard/index.html`

- 用途：与日报同步的静态可视化页面。
- 注意：样式和资源均为本地文件，可在 `file://` 下打开。

### `scheduler-config.json`

- 用途：保存码道定时任务名称、提示词、频率和输出路径。
- 注意：这是参数记录，实际启用仍要在码道 IDE 操作。
