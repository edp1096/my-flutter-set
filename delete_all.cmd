@echo off

rmdir home /q/s 2>nul

rmdir openjdk /q/s 2>nul
rmdir sdk /q/s 2>nul
rmdir cmdline-tools /q/s 2>nul
rmdir flutter /q/s 2>nul
rmdir dart-sdk /q/s 2>nul
rmdir vscode /q/s 2>nul
rmdir git /q/s 2>nul

del vscode.zip /q/s 2>nul
del git.zip /q/s 2>nul
del dart.zip /q/s 2>nul
del flutter.zip /q/s 2>nul
del openjdk.zip /q /s 1>nul

del "Flutter Code.lnk" 2>nul
del "%UserProfile%\desktop\Flutter Code.lnk" 2>nul
