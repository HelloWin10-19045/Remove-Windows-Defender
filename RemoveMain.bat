@echo off
title �Ƴ�Windows Defender����
color 3f
cd \

title �Ƴ�Windows Defender��...(1/10)
echo ����ɾ�� Program Files �е�Windows Defender�ļ�...
del /f /s /q /a "%SystemDrive%\Program Files\Windows Defender"
del /f /s /q /a "%SystemDrive%\Program Files\Windows Defender Advanced Threat Protection"
del /f /s /q /a "%SystemDrive%\Program Files\Windows Security"
rd /s /q "%SystemDrive%\Program Files\Windows Defender"
rd /s /q "%SystemDrive%\Program Files\Windows Defender Advanced Threat Protection"
rd /s /q "%SystemDrive%\Program Files\Windows Security"
cls

title �Ƴ�Windows Defender��...(2/10)
echo ����ɾ�� Program Files (x86) �е�Windows Defender�ļ�...
del /f /s /q /a "%SystemDrive%\Program Files (x86)\Windows Defender"
del /f /s /q /a "%SystemDrive%\Program Files (x86)\Windows Defender Advanced Threat Protection"
rd /s /q "%SystemDrive%\Program Files (x86)\Windows Defender"
rd /s /q "%SystemDrive%\Program Files (x86)\Windows Defender Advanced Threat Protection"
cls

title �Ƴ�Windows Defender��...(3/10)
echo ����ɾ�� ProgramData �е�Windows Defender�ļ�...
del /f /s /q /a "%SystemDrive%\ProgramData\Microsoft\Windows Defender"
del /f /s /q /a "%SystemDrive%\ProgramData\Microsoft\Windows Defender Advanced Threat Protection"
del /f /s /q /a "%SystemDrive%\ProgramData\Microsoft\Windows Security Health"
del /f /s /q /a "%SystemDrive%\ProgramData\Microsoft\Windows\WER"
rd /s /q "%SystemDrive%\ProgramData\Microsoft\Windows Defender"
rd /s /q "%SystemDrive%\ProgramData\Microsoft\Windows Defender Advanced Threat Protection"
rd /s /q "%SystemDrive%\ProgramData\Microsoft\Windows Security Health"
rd /s /q "%SystemDrive%\ProgramData\Microsoft\Windows\WER"
cls

title �Ƴ�Windows Defender��...(4/10)
echo ����ɾ�� SystemApps �� WindowsApps �е�Windows Defender�û�����...
for /d %%i in ("%SystemRoot%\SystemApps\*SecHealthUI*") do del /f /s /q /a "%%i"
for /d %%i in ("%SystemRoot%\SystemApps\*SecHealthUI*") do rd /s /q "%%i"
for /d %%i in ("%ProgramFiles%\WindowsApps\*SecHealthUI*") do del /f /s /q /a "%%i"
for /d %%i in ("%ProgramFiles%\WindowsApps\*SecHealthUI*") do rd /s /q "%%i"
del /f /s /q /a "%SystemRoot%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy"
rd /s /q "%SystemRoot%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy"
cls

title �Ƴ�Windows Defender��...(5/10)
echo ����ɾ�� System32 �е�Windows Defender֧�ֳ������������...
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

title �Ƴ�Windows Defender��...(6/10)
echo ����ɾ�� Windows Defender ������ƻ�����...
del /f /s /q /a "%SystemRoot%\System32\Tasks\Microsoft\Windows\Windows Defender"
rd /s /q "%SystemRoot%\System32\Tasks\Microsoft\Windows\Windows Defender"
cls

title �Ƴ�Windows Defender��...(7/10)
echo ����ɾ�� Windows Defender ����ط���...
sc config wscsvc start=disabled
sc config WdNisDrv start=disabled
sc config WdNisSvc start=disabled
sc config WdFilter start=disabled
sc config WdBoot start=disabled
sc config SecurityHealthService start=disabled
sc config SgrmAgent start=disabled
sc config SgrmBroker start=disabled
sc config Sense start=disabled
sc config WinDefend start=disabled
sc config MsSecFlt start=disabled
sc delete wscsvc
sc delete WdNisDrv
sc delete WdNisSvc
sc delete WdFilter
sc delete WdBoot
sc delete SecurityHealthService
sc delete SgrmAgent
sc delete SgrmBroker
sc delete Sense
sc delete WinDefend
sc delete MsSecFlt
cls

title �Ƴ�Windows Defender��...(8/10)
echo ����ɾ�� Windows Defender �����ע���...
reg delete "HKLM\SOFTWARE\Microsoft\Windows Defender" /F
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows Security Health" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsMpEng.exe" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"  /v "SecurityHealth" /F
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects\{F56F6FDD-AA9D-4618-A949-C1B91AF43B1A}" /F
cls

title �Ƴ�Windows Defender��...(9/10)
echo ���ڽ���Windows Defender���ڴ�������...
bcdedit /set hypervisorlaunchtype off
cls

title �Ƴ�Windows Defender��...(10/10)
echo �����˳�BCPE����...
reg add "HKLM\SYSTEM\Setup" /v CmdLine /d "" /t REG_SZ /F
reg add "HKLM\SYSTEM\Setup" /v SetupPhase /d "0" /t REG_DWORD /F
reg add "HKLM\SYSTEM\Setup" /v SetupType /d "0" /t REG_DWORD /F
reg add "HKLM\SYSTEM\Setup" /v SystemSetupInProgress /d "0" /t REG_DWORD /F
cls

title �Ƴ�Windows Defender���
color 0f
echo ������������ϵͳ...
shutdown /r /f /t 1
del /f /q "%SystemDrive%\RemoveMain.bat"
exit