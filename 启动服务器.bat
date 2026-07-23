@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
cd /d "E:\OneDrive\Desktop\STK_Project"

echo.
echo ==========================================
echo   电建二号 链路衰减计算器
echo ==========================================
echo.
echo   桌面端: http://localhost:8080/链路衰减计算器.html
echo.

for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr "IPv4"') do (
    set ip=%%a
    set ip=!ip: =!
    if not "!ip!"=="127.0.0.1" (
        echo   手机端: http://!ip!:8080/链路衰减计算器.html
    )
)
echo.
echo   加载后可安装为 App, 离线可用
echo   关闭此窗口即停止服务
echo ==========================================
echo.

start "" http://localhost:8080/链路衰减计算器.html
python -m http.server 8080
pause
