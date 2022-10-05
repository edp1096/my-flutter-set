@echo off

if not exist sdk (
	mkdir sdk
)

curl -Lo sdk.zip https://dl.google.com/android/repository/commandlinetools-win-8512546_latest.zip
tar -xf sdk.zip

del sdk.zip /q /s 1>nul

cd ..