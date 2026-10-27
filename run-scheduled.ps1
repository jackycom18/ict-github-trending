param(
  [ValidateSet('daily', 'weekly', 'monthly', 'all')]
  [string]$Period = 'daily'
)

$ErrorActionPreference = 'Stop'
$env:NODE_USE_ENV_PROXY = '1'
node scripts/run-analysis.mjs --period $Period --output-dir reports/github-trending
if ($LASTEXITCODE -ne 0) {
  throw "GitHub Trending analysis failed with exit code $LASTEXITCODE"
}
