@echo off
title 移除Windows Defender工具
color 3f
cd \

title 移除Windows Defender中...(1/10)
echo 正在删除 Program Files 中的 Windows Defender 文件...
del /f /s /q /a "%SystemDrive%\Program Files\Windows Defender"
del /f /s /q /a "%SystemDrive%\Program Files\Windows Defender Advanced Threat Protection"
del /f /s /q /a "%SystemDrive%\Program Files\Windows Security"
rd /s /q "%SystemDrive%\Program Files\Windows Defender"
rd /s /q "%SystemDrive%\Program Files\Windows Defender Advanced Threat Protection"
rd /s /q "%SystemDrive%\Program Files\Windows Security"
cls

title 移除Windows Defender中...(2/10)
echo 正在删除 Program Files (x86) 中的 Windows Defender 文件...
del /f /s /q /a "%SystemDrive%\Program Files (x86)\Windows Defender"
del /f /s /q /a "%SystemDrive%\Program Files (x86)\Windows Defender Advanced Threat Protection"
rd /s /q "%SystemDrive%\Program Files (x86)\Windows Defender"
rd /s /q "%SystemDrive%\Program Files (x86)\Windows Defender Advanced Threat Protection"
cls

title 移除Windows Defender中...(3/10)
echo 正在删除 ProgramData 中的 Windows Defender 文件...
del /f /s /q /a "%SystemDrive%\ProgramData\Microsoft\Windows Defender"
del /f /s /q /a "%SystemDrive%\ProgramData\Microsoft\Windows Defender Advanced Threat Protection"
del /f /s /q /a "%SystemDrive%\ProgramData\Microsoft\Windows Security Health"
del /f /s /q /a "%SystemDrive%\ProgramData\Microsoft\Windows\WER"
rd /s /q "%SystemDrive%\ProgramData\Microsoft\Windows Defender"
rd /s /q "%SystemDrive%\ProgramData\Microsoft\Windows Defender Advanced Threat Protection"
rd /s /q "%SystemDrive%\ProgramData\Microsoft\Windows Security Health"
rd /s /q "%SystemDrive%\ProgramData\Microsoft\Windows\WER"
cls

title 移除Windows Defender中...(4/10)
echo 正在删除 Windows Defender 用户界面...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "SettingsPageVisibility" /t REG_SZ /d "hide:windowsdefender;" /F
powershell -ExecutionPolicy Bypass -File "%SystemDrive%\RemoveDefenderTool\RemoveSecHealthApp.ps1"
for /d %%i in ("%SystemRoot%\SystemApps\*SecHealthUI*") do del /f /s /q /a "%%i"
for /d %%i in ("%SystemRoot%\SystemApps\*SecHealthUI*") do rd /s /q "%%i"
for /d %%i in ("%ProgramFiles%\WindowsApps\*SecHealthUI*") do del /f /s /q /a "%%i"
for /d %%i in ("%ProgramFiles%\WindowsApps\*SecHealthUI*") do rd /s /q "%%i"
del /f /s /q /a "%SystemRoot%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy"
rd /s /q "%SystemRoot%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy"
cls

title 移除Windows Defender中...(5/10)
echo 正在删除 System32 中的 Windows Defender 支持程序和驱动程序...
del /f /q /a "%SystemRoot%\System32\drivers\WdBoot.sys"
del /f /q /a "%SystemRoot%\System32\drivers\WdDevFlt.sys"
del /f /q /a "%SystemRoot%\System32\drivers\WdFilter.sys"
del /f /q /a "%SystemRoot%\System32\drivers\WdNisDrv.sys"
del /f /q /a "%SystemRoot%\System32\SecurityHealthService.exe"
del /f /q /a "%SystemRoot%\System32\SecurityHealthSystray.exe"
del /f /q /a "%SystemRoot%\System32\SecurityHealthHost.exe"
del /f /q /a "%SystemRoot%\System32\smartscreen.exe"
del /f /q /a "%SystemRoot%\System32\SecurityCenterBroker.exe"
del /f /q /a "%SystemRoot%\System32\SecurityCenterBrokerPS.exe"
del /f /q /a "%SystemRoot%\System32\smartscreenps.dll"
del /f /q /a "%SystemRoot%\System32\SecurityHealthAgent.dll"
del /f /q /a "%SystemRoot%\System32\SecurityHealthProxyStub.dll"
del /f /q /a "%SystemRoot%\System32\SecurityHealthSSO.dll"
del /f /q /a "%SystemRoot%\System32\zh-CN\SecurityHealthSSO.dll.mui"
cls

title 移除Windows Defender中...(6/10)
echo 正在删除 Windows Defender 的任务计划程序...
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0ACC9108-2000-46C0-8407-5FD9F89521E8}" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{1D77BCC8-1D07-42D0-8C89-3A98674DFB6F}" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{4A9233DB-A7D3-45D6-B476-8C7D8DF73EB5}" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{B05F34EE-83F2-413D-BC1D-7D5BD6E98300}" /F
del /f /s /q /a "%SystemRoot%\System32\Tasks\Microsoft\Windows\Windows Defender"
rd /s /q "%SystemRoot%\System32\Tasks\Microsoft\Windows\Windows Defender"
cls

title 移除Windows Defender中...(7/10)
echo 正在删除 Windows Defender 的相关服务...
sc delete Hsp
sc delete Sense
sc delete wscsvc
sc delete WdBoot
sc delete WdFilter
sc delete WinDefend
sc delete MsSecFlt
sc delete MsSecWfp
sc delete whesvc
sc delete SgrmAgent
sc delete SgrmBroker
sc delete WdNisDrv
sc delete WdNisSvc
sc delete MsSecCore
sc delete PlutonHeci
sc delete PlutonHsp2
sc delete webthreatdefsvc
sc delete SecurityHealthService
sc delete webthreatdefusersvc
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Hsp" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Sense" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\wscsvc" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdBoot" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdFilter" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MsSecFlt" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MsSecWfp" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\whesvc" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SgrmAgent" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SgrmBroker" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdNisDrv" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MsSecCore" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PlutonHeci" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\PlutonHsp2" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\webthreatdefsvc" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\webthreatdefusersvc" /F
cls

title 移除Windows Defender中...(8/10)
echo 正在删除 Windows Defender 的相关注册表...
reg delete "HKCR\WindowsDefender" /F
reg delete "HKLM\SOFTWARE\Classes\WindowsDefender" /F
reg delete "HKCR\AppX9kvz3rdv8t7twanaezbwfcdgrbg3bck0" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows Defender" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows Security Health" /F
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /F
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "WindowsDefender" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "SecurityHealth" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "Windows Defender" /F
reg delete "HKLM\SOFTWARE\Classes\AppUserModelId\Windows.Defender" /F
reg delete "HKLM\SOFTWARE\Classes\AppUserModelId\Microsoft.Windows.Defender" /F
reg delete "HKLM\SOFTWARE\Microsoft\WindowsRuntime\Server\WebThreatDefSvc" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost\WebThreatDefense" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsMpEng.exe" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Ubpm" /v "CriticalMaintenance_DefenderCleanup" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Ubpm" /v "CriticalMaintenance_DefenderVerification" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{F56F6FDD-AA9D-4618-A949-C1B91AF43B1A}" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /F
reg delete "HKCR\Local Settings\MrtCache\C:%5CWindows%5CSystemApps%5CMicrosoft.Windows.AppRep.ChxApp_cw5n1h2txyewy%5Cresources.pri" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\Static\System" /v "WindowsDefender-1" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\Static\System" /v "WindowsDefender-2" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\Static\System" /v "WindowsDefender-3" /F
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /F
reg delete "HKCR\CLSID\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /F
reg delete "HKCR\WOW6432Node\CLSID\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /F
reg delete "HKLM\SOFTWARE\WOW6432Node\Classes\CLSID\{BB64F8A7-BEE7-4E1A-AB8D-7D8273F7FDB6}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{2781761E-28E0-4109-99FE-B9D127C57AFE}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{2781761E-28E2-4109-99FE-B9D127C57AFE}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{195B4D07-3DE2-4744-BBF2-D90121AE785B}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{361290c0-cb1b-49ae-9f3e-ba1cbe5dab35}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{45F2C32F-ED16-4C94-8493-D72EF93A051B}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{6CED0DAA-4CDE-49C9-BA3A-AE163DC3D7AF}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{8a696d12-576b-422e-9712-01b9dd84b446}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{8C9C0DB7-2CBA-40F1-AFE0-C55740DD91A0}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{A2D75874-6750-4931-94C1-C99D3BC9D0C7}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{A7C452EF-8E9F-42EB-9F2B-245613CA0DC9}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{DACA056E-216A-4FD1-84A6-C306A017ECEC}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{E3C9166D-1D39-4D4E-A45D-BC7BE9B00578}" /F
reg delete "HKLM\SOFTWARE\Classes\WOW6432Node\CLSID\{F6976CF5-68A8-436C-975A-40BE53616D59}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{2781761E-28E0-4109-99FE-B9D127C57AFE}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{2781761E-28E2-4109-99FE-B9D127C57AFE}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{195B4D07-3DE2-4744-BBF2-D90121AE785B}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{361290c0-cb1b-49ae-9f3e-ba1cbe5dab35}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{45F2C32F-ED16-4C94-8493-D72EF93A051B}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{6CED0DAA-4CDE-49C9-BA3A-AE163DC3D7AF}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{8a696d12-576b-422e-9712-01b9dd84b446}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{8C9C0DB7-2CBA-40F1-AFE0-C55740DD91A0}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{A2D75874-6750-4931-94C1-C99D3BC9D0C7}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{A7C452EF-8E9F-42EB-9F2B-245613CA0DC9}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{DACA056E-216A-4FD1-84A6-C306A017ECEC}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{E3C9166D-1D39-4D4E-A45D-BC7BE9B00578}" /F
reg delete "HKLM\SOFTWARE\Classes\CLSID\{F6976CF5-68A8-436C-975A-40BE53616D59}" /F
reg delete "HKCR\WOW6432Node\CLSID\{2781761E-28E0-4109-99FE-B9D127C57AFE}" /F
reg delete "HKCR\WOW6432Node\CLSID\{2781761E-28E2-4109-99FE-B9D127C57AFE}" /F
reg delete "HKCR\WOW6432Node\CLSID\{195B4D07-3DE2-4744-BBF2-D90121AE785B}" /F
reg delete "HKCR\WOW6432Node\CLSID\{361290c0-cb1b-49ae-9f3e-ba1cbe5dab35}" /F
reg delete "HKCR\WOW6432Node\CLSID\{45F2C32F-ED16-4C94-8493-D72EF93A051B}" /F
reg delete "HKCR\WOW6432Node\CLSID\{6CED0DAA-4CDE-49C9-BA3A-AE163DC3D7AF}" /F
reg delete "HKCR\WOW6432Node\CLSID\{8a696d12-576b-422e-9712-01b9dd84b446}" /F
reg delete "HKCR\WOW6432Node\CLSID\{8C9C0DB7-2CBA-40F1-AFE0-C55740DD91A0}" /F
reg delete "HKCR\WOW6432Node\CLSID\{A2D75874-6750-4931-94C1-C99D3BC9D0C7}" /F
reg delete "HKCR\WOW6432Node\CLSID\{A7C452EF-8E9F-42EB-9F2B-245613CA0DC9}" /F
reg delete "HKCR\WOW6432Node\CLSID\{DACA056E-216A-4FD1-84A6-C306A017ECEC}" /F
reg delete "HKCR\WOW6432Node\CLSID\{E3C9166D-1D39-4D4E-A45D-BC7BE9B00578}" /F
reg delete "HKCR\WOW6432Node\CLSID\{F6976CF5-68A8-436C-975A-40BE53616D59}" /F
reg delete "HKCR\CLSID\{2781761E-28E0-4109-99FE-B9D127C57AFE}" /F
reg delete "HKCR\CLSID\{2781761E-28E2-4109-99FE-B9D127C57AFE}" /F
reg delete "HKCR\CLSID\{195B4D07-3DE2-4744-BBF2-D90121AE785B}" /F
reg delete "HKCR\CLSID\{361290c0-cb1b-49ae-9f3e-ba1cbe5dab35}" /F
reg delete "HKCR\CLSID\{45F2C32F-ED16-4C94-8493-D72EF93A051B}" /F
reg delete "HKCR\CLSID\{6CED0DAA-4CDE-49C9-BA3A-AE163DC3D7AF}" /F
reg delete "HKCR\CLSID\{8a696d12-576b-422e-9712-01b9dd84b446}" /F
reg delete "HKCR\CLSID\{8C9C0DB7-2CBA-40F1-AFE0-C55740DD91A0}" /F
reg delete "HKCR\CLSID\{A2D75874-6750-4931-94C1-C99D3BC9D0C7}" /F
reg delete "HKCR\CLSID\{A7C452EF-8E9F-42EB-9F2B-245613CA0DC9}" /F
reg delete "HKCR\CLSID\{DACA056E-216A-4FD1-84A6-C306A017ECEC}" /F
reg delete "HKCR\CLSID\{E3C9166D-1D39-4D4E-A45D-BC7BE9B00578}" /F
reg delete "HKCR\CLSID\{F6976CF5-68A8-436C-975A-40BE53616D59}" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /F
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /F
cls

title 移除Windows Defender中...(9/10)
echo 正在禁用 Windows Defender 的内存完整性...
bcdedit /set hypervisorlaunchtype off
cls

title 移除Windows Defender中...(10/10)
echo 正在退出BCPE环境...
reg add "HKLM\SYSTEM\Setup" /v CmdLine /d "" /t REG_SZ /F
reg add "HKLM\SYSTEM\Setup" /v SetupPhase /d "0" /t REG_DWORD /F
reg add "HKLM\SYSTEM\Setup" /v SetupType /d "0" /t REG_DWORD /F
reg add "HKLM\SYSTEM\Setup" /v SystemSetupInProgress /d "0" /t REG_DWORD /F
cls

title 移除Windows Defender完成
color 0f
echo 正在重新启动系统...
shutdown /r /t 1
rd /s /q "%SystemDrive%\RemoveDefenderTool"
exit