@echo off

if not exist vscode (
    echo Folder 'vscode' not found & echo Please install first & ping -n 3 127.0.0.1 >nul & exit
)

set VSCODE_RUN_COMMAND=vscode\bin\code.cmd --reuse-window --extensions-dir vscode/data/extension --user-data-dir vscode/data/user-data

set HOME=%cd%\home
set USERPROFILE=%cd%\home\user-profile
set APPDATA=%cd%\home\app-data

set GIT_CEILING_DIRECTORIES=%cd%\playground

set PIP_NO_CACHE_DIR=off

set PATH=C:\Windows;C:\Windows\System;C:\Windows\System32
set PATH=%PATH%;%SystemRoot%\SysWOW64\WindowsPowerShell\v1.0;C:\WINDOWS\System32\OpenSSH\;C:\Windows\System32\wbem
set PATH=%cd%\my_cmds;%cd%\bin;%PATH%

if exist git (
    set PATH=%cd%\git;%cd%\git\cmd;%cd%\git\mingw64\bin;%cd%\git\usr\bin;%PATH%
    git config --system http.sslcainfo "%cd%/git/mingw64/etc/ssl/certs/ca-bundle.crt"
)
if exist flutter (
    set PATH=%cd%\flutter\bin;%PATH%
)
if exist cmdline-tools (
    set PATH=%cd%\cmdline-tools\bin;%PATH%
)
if exist sdk (
    set PATH=%cd%\sdk;%cd%\sdk\tools;%cd%\sdk\tools\bin;%cd%\sdk\platform-tools;%cd%\sdk\emulator;%cd%\sdk\emulator\bin64;%PATH%
)
if exist openjdk (
    set JAVA_HOME=%cd%\openjdk
    set PATH=%cd%\openjdk\bin;%PATH%
)
if exist go (
    set GOROOT=%cd%\go
    set PATH=%cd%\go;%cd%\go\bin;%cd%\home\user-profile\go\bin;%PATH%
)
if exist nodejs (
    set PATH=%cd%\nodejs;%PATH%
    set NODEJS_ROOT=%cd%\nodejs
    set NODEJS_CACHE=%cd%\nodejs\npm-cache
    set VSCODE_RUN_COMMAND=npm config set cache %cd%\nodejs\npm-cache --global;%VSCODE_RUN_COMMAND%
)
if exist gnuwin (
    set PATH=%cd%\gnuwin;%PATH%
)
if exist mingw (
    set PATH=%cd%\mingw;%cd%\mingw\bin;%cd%\mingw\x86_64-w64-mingw32\bin;%PATH%
)

set ANDROID_SDK_ROOT=%cd%\sdk
set ANDROID_SDK_HOME=%cd%\sdk
set ANDROID_HOME=%cd%\sdk

%SystemRoot%\SysWOW64\WindowsPowerShell\v1.0\powershell.exe -WindowStyle hidden "%VSCODE_RUN_COMMAND%"
