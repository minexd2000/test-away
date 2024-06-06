@echo off
C:
setlocal
set PATH=%PATH%;%PROGRAMFILES(X86)%\Google\Chrome Remote Desktop\CurrentVersion
remoting_start_host.exe --code="4/0AdLIrYcChBVR_zY7WEwSKJ3_Wqio8Gi1ZbBlbacB_084gO1zqvegnmJw_zkEC3yRD9q23A" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name="%COMPUTERNAME%"
3020666
endlocal
