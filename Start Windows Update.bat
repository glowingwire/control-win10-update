sc config "wuauserv" start= auto
net start "wuauserv"
sc config "bits" start= auto
net start "bits"

C:\WINDOWS\system32\svchost.exe -k netsvcs

start ms-settings:windowsupdate
WindowsUpdate.vbs
pause

sc config "wuauserv" start= disabled
net stop "wuauserv"
sc config "bits" start= disabled
net stop "bits"
pause
