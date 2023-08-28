@echo off

taskkill /im adb.exe /F
taskkill /im java.exe /F

rmdir home /q/s 2>nul

rmdir openjdk /q/s 2>nul
rmdir sdk /q/s 2>nul
rmdir cmdline-tools /q/s 2>nul
rmdir flutter /q/s 2>nul
rmdir vscode /q/s 2>nul
rmdir git /q/s 2>nul
rmdir go /q/s 2>nul

del vscode.zip /q/s 2>nul
del git.zip /q/s 2>nul
del flutter.zip /q/s 2>nul
del openjdk.zip /q/s 2>nul
del go.zip /q/s 2>nul

del "Flutter Code.lnk" 2>nul
del "%UserProfile%\desktop\Flutter Code.lnk" 2>nul
