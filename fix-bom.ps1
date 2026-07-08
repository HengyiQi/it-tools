@echo off
chcp 65001 > nul
echo ========================================
echo 批量移除 JSON/YML 文件 BOM 字符
echo ========================================
echo.

set "ROOT_DIR=%~dp0"

for %%F in ("%ROOT_DIR%package.json" "%ROOT_DIR%vercel.json" "%ROOT_DIR%.env" "%ROOT_DIR%.env.production") do (
    if exist "%%F" (
        powershell -Command "$content = Get-Content '%%F' -Raw -Encoding UTF8; $content = $content.TrimStart([char]0xFEFF); [System.IO.File]::WriteAllText('%%F', $content, (New-Object System.Text.UTF8Encoding $false)); Write-Host '已修复: %%F'"
    )
)

echo.
echo 完成！
pause
