@echo off
echo Downloading Chrome Remote Desktop Host MSI...
curl -o chromeremotedesktophost.msi https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi
echo Installing Chrome Remote Desktop Host...
msiexec /i chromeremotedesktophost.msi /quiet /norestart
echo Installation complete.
pause
