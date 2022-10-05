@echo off

if exist flutter (
  rmdir flutter /q/s 2>nul
  echo Flutter SDK deleted
)

%SystemRoot%\SysWOW64\WindowsPowerShell\v1.0\powershell.exe -Command "& ./flutter_get_version.ps1"
set /p FLUTTER_VERSION=<FLUTTER_VERSION

curl --progress-bar -Lo flutter.zip https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_%FLUTTER_VERSION%-stable.zip
tar -xf flutter.zip

del flutter.zip

echo Done
