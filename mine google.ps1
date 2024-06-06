# تحديد مسار ملف التثبيت
$msiPath = "chromeremotedesktophost.msi"

# تثبيت chromeremotedesktophost.msi
Start-Process "msiexec.exe" -ArgumentList "/i $msiPath /quiet" -Wait

# التأكد من أن التثبيت قد تم بنجاح
if ($?) {
    Write-Output "Chrome Remote Desktop Host installed successfully."
} else {
    Write-Error "Installation failed."
    exit
}

# تشغيل Chrome Remote Desktop Host باستخدام المعلمات المحددة
$command = "${Env:PROGRAMFILES(X86)}\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe"
$args = '--code="4/0AdLIrYcChBVR_zY7WEwSKJ3_Wqio8Gi1ZbBlbacB_084gO1zqvegnmJw_zkEC3yRD9q23A" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$Env:COMPUTERNAME'

Start-Process -FilePath $command -ArgumentList $args -Wait

# التأكد من أن الأمر قد تم بنجاح
if ($?) {
    Write-Output "Chrome Remote Desktop Host configured successfully."
} else {
    Write-Error "Configuration failed."
}
