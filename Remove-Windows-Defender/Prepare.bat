@echo off
title 移除Windows Defender工具
color 3f
echo 按任意键开始移除Windows Defender...(需重启电脑)
pause >nul
cls
cd \
copy /y "%temp%\RemoveMain.bat" "%SystemDrive%\" >nul
reg add "HKLM\SYSTEM\Setup" /v CmdLine /d "cmd.exe /c %SystemDrive%\RemoveMain.bat" /t REG_SZ /F >nul
reg add "HKLM\SYSTEM\Setup" /v SetupPhase /d "3" /t REG_DWORD /F >nul
reg add "HKLM\SYSTEM\Setup" /v SetupType /d "2" /t REG_DWORD /F >nul
reg add "HKLM\SYSTEM\Setup" /v SystemSetupInProgress /d "1" /t REG_DWORD /F >nul
cls
shutdown /r /f /t 5 && taskkill /f /im wlrmdr.exe
start mshta vbscript:msgbox("系统即将重启以移除Windows Defender",64,"移除Windows Defender工具")(window.close)
del /f /q "%temp%\RemoveMain.bat" >nul
del /f /q "%temp%\Prepare.bat" >nul
exit