# git-push.ps1
Param (
    [string]$Message = "Update website"
)

git add .
git commit -m "$Message"
git push
if ($LASTEXITCODE -ne 0) {
    Write-Host "Git push failed. Please check your repository and try again." -ForegroundColor Red
    exit 1
} else {
    Write-Host "Changes pushed successfully." -ForegroundColor Green
}