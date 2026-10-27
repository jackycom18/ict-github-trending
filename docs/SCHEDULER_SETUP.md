# 码道定时任务配置

## 创建任务

1. 在码道 IDE 打开本项目 `github-trending-dashboard`。
2. 点击聊天界面的“定时任务”图标。
3. 点击“创建定时任务”。
4. 按以下内容填写：

| 参数 | 内容 |
| --- | --- |
| 名称 | GitHub Trending 每日分析 |
| 项目文件夹 | 当前项目 |
| 执行频率 | 每天 08:00 |
| 提示词 | 见下方 |

提示词：

```text
使用 analyze-github-trending 技能分析 GitHub Trending 每日榜单，执行 node scripts/run-analysis.mjs --period daily，生成今日中文日报并同步更新 dashboard 页面，并在码道内置浏览器预览 dashboard 页面。
```

5. 点击确定，保持任务“生效中”。
6. 点击“立即执行”完成首次运行。

## 验收产物

- `reports/github-trending/<date>-daily.md`
- `reports/github-trending/cache/<date>/`
- `reports/github-trending/dashboard/index.html`
- `reports/github-trending/dashboard/history/<date>.html`

## 限制

- 单个项目最多同时启用 3 个定时任务。
- 单次定时执行区间不超过 7 天。
- 定时任务保存在 `%USERPROFILE%/.codeartsdoer/codearts-data/cron`。
