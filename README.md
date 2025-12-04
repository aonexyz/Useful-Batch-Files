# Top 10 Most Useful Windows Batch Files
Automate daily tasks on Windows with simple batch scripts!
Batch files are lightweight scripts that help you perform repetitive tasks automatically just double-click and let Windows do the work!

---

## How to setup

### 1. Clone this repo
```bash
git clone https://github.com/aonexyz/Useful-Batch-Files
cd Useful-Batch-Files
```

### OR

## Simply Copy the Code
1. Open Notepad
2. Paste any script from this repo
3. Save the file with .bat extension
4. Double-click to run!

### 1. Temporary Files Cleaner
Boost performance by deleting temp files.
```bash
@echo off
del /q/f/s %TEMP%\*
rd /s /q %TEMP%
echo Temporary files deleted!
pause
```
Save as: CleanTemp.bat

### 2. WiFi Password Viewer
Get stored WiFi passwords.
```bash
@echo off
netsh wlan show profile name="WiFi-Name" key=clear
pause
```
Save as: WifiPassword.bat

### 3. Auto Backup Script
Backup important files instantly.
```bash
@echo off
xcopy "C:\Important" "D:\Backup" /s /i /y
echo Backup completed!
pause
```
Save as: BackupFiles.bat

### 4. Network Info Viewer
Display full network information.
```bash
@echo off
ipconfig /all
pause
```
Save as: NetworkInfo.bat

### 5. Folder Locker (Password Protected)
```bash
@echo off
title Folder Locker
if EXIST Private goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
echo Are you sure to lock this folder? (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==N goto END
:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked!
goto End
:UNLOCK
echo Enter password to unlock:
set/p "pass=>"
if NOT %pass%==1234 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Folder unlocked!
goto End
:FAIL
echo Wrong password!
goto End
:MDLOCKER
md Private
echo Private folder created!
goto End
:End
pause
```
Change password ``` 1234``` to your own.
Save as: FolderLocker.bat

### 6. Auto Shutdown Timer
Shutdown PC after a set time.
```bash
@echo off
shutdown -s -t 3600
```
```3600``` = 1 hour in seconds
Save as: ShutdownTimer.bat

### 7. Restart Internet Adapter
```bash
@echo off
ipconfig /release
ipconfig /renew
pause
```
Save as: RestartInternet.bat

### 8. Open Multiple Programs at Once
```bash
@echo off
start chrome.exe
start notepad.exe
start calc.exe
```
Replace apps as you like.
Save as: OpenApps.bat

### 9. Internet Connection Test
```bash
@echo off
ping google.com
pause
```
Save as: InternetCheck.bat

### 10. Auto Folder Creator (Date-Based)
```bash
@echo off
set folder=%date:~10,4%-%date:~4,2%-%date:~7,2%
md %folder%
echo Folder %folder% created!
pause
```
Save as: AutoFolder.bat

---

## Why Use Batch Scripts?
Automate daily work
Save time
Learn scripting
Boost productivity

---

## Contributions
Feel free to fork this repo, add your own scripts, and submit PRs!

---

## 📜 License
Free to use and modify- credit appreciated😊

---

## Author

- **A 1** – [GitHub: aonexyz](https://github.com/aonexyzl)

---

## Buy me a coffee ☕
Love the script? Wanna fuel more WAGMI vibes? Drop some crypto love to keep the charts lit! 🙌
- **SUI**: `0x6e20d8f6c15aeb42887608eec65b29385f21fa21cfd23302c54fabd813d8cd38`
- **USDT (TRC20)**: `TMoPwVpeC8A2yTc5qotKj8gVXaGTqQwc3L`
- **BNB (BEP20)**: `0x068ff5934e0c30d8763012a6faa0033e7fdcc455`
- **Binance UID**:`899350787`

Every bit helps me grind harder and keep this bot stacking bags! 😎



