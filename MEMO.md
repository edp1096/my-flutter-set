* Install packages using `sdkmanager`
```cmd
sdkmanager.bat --sdk_root=%cd%\sdk --licenses
sdkmanager.bat --sdk_root=%cd%\sdk --list
sdkmanager.bat --sdk_root=%cd%\sdk --install "platforms;android-33"
sdkmanager.bat --sdk_root=%cd%\sdk --install "build-tools;33.0.0"
sdkmanager.bat --sdk_root=%cd%\sdk --install "platform-tools"
sdkmanager.bat --sdk_root=%cd%\sdk --install "cmdline-tools;latest"
sdkmanager.bat --sdk_root=%cd%\sdk --install "emulator"
sdkmanager.bat --sdk_root=%cd%\sdk --install "system-images;android-33;google_apis_playstore;x86_64"
```
* Trouble shooting
	* If meet error change to jdk1.8 for `avdmanager`
```cmd
sdkmanager.bat --sdk_root=%cd%\sdk --install "system-images;android-33;google_apis_playstore;x86_64"
```
