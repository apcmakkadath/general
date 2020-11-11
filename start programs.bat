@echo ON
start "" "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE"
timeout 10

explorer
timeout 5

start "" "C:\Program Files (x86)\KeePass Password Safe 2\KeePass.exe"
timeout 5

start "" "C:\Program Files (x86)\Microsoft Office\root\Office16\ONENOTE.EXE"
REM timeout 5

start "" "C:\Program Files (x86)\mRemoteNG\mRemoteNG.exe"
timeout 5

start "" "C:\Program Files\Notepad++\notepad++.exe"
timeout 5

start "" "C:\Program Files\Fortinet\FortiClient\FortiClient.exe"
timeout 5

start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
timeout 5

start "" "C:\Program Files\Mozilla Firefox\firefox.exe"
EXIT
