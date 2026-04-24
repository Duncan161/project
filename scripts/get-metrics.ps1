# scripts/get-metrics.ps1
Write-Host "=== Project Development Metrics ===" -ForegroundColor Cyan
$totalCommits = git rev-list --count HEAD
Write-Host "Total commits: $totalCommits"
$authors = git shortlog -sn | Measure-Object -Line
Write-Host "Active authors: $( $authors.Lines )"
Write-Host "
Last 5 commits:"
git log --oneline -5
Write-Host "
Tags:"
git tag -l
Write-Host "
Branches:"
git branch -a
