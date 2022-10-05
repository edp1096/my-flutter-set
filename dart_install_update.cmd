@echo off

if exist dart-sdk (
  rmdir dart-sdk /q/s 2>nul
  echo Dart SDK deleted
)

%SystemRoot%\SysWOW64\WindowsPowerShell\v1.0\powershell.exe -Command "& ./dart_get_version.ps1"
set /p DART_VERSION=<DART_VERSION

curl --progress-bar -Lo dart.zip https://storage.googleapis.com/dart-archive/channels/stable/release/%DART_VERSION%/sdk/dartsdk-windows-x64-release.zip
tar -xf dart.zip

del dart.zip

echo Done
