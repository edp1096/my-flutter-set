@echo off

set HOME=%cd%\home
set USERPROFILE=%cd%\home\user-profile
set APPDATA=%cd%\home\app-data

set GIT_CEILING_DIRECTORIES=%cd%\playground

set PATH=%cd%\my_cmds;%cd%\bin;C:\Windows;C:\Windows\System;C:\Windows\System32
set PATH=%SystemRoot%\SysWOW64\WindowsPowerShell\v1.0;%PATH%
set PATH=%cd%\git;%cd%\git\cmd;%cd%\git\mingw64\bin;%cd%\git\usr\bin;%PATH%

if exist dart-sdk (
    set PATH=%cd%\dart-sdk\bin;%PATH%
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

set ANDROID_SDK_ROOT=%cd%\sdk
set ANDROID_SDK_HOME=%cd%\sdk
set ANDROID_HOME=%cd%\sdk

cmd
