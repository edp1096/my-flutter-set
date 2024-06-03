Scripts for `Flutter` toy creation on Windows

<img src="image.png">


## Setup

* Run `install_all.ps1`


## Scripts
* Powershell script execution policy
    * `ExecutionPolicy` should be set to `RemoteSigned` and unblock `ps1` files
```powershell
ExecutionPolicy                                     # Check
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned # Set as RemoteSigned

Unblock-File *.ps1                                  # Unblock ps1 files
```

* `install_all.ps1` - run all of below `ps1` files and create shortcut to Desktop
    * install_update_vscode.ps1 - Install or update vscode
        * ~~vscode_checksum_fix.ps1 - For [webfont](https://github.com/Joungkyun/font-d2coding-ligature). <b>Do not run directly<b>~~ Because of wsl extension launching failure, not use.
    * install_git.ps1 - Install git
    * install_flutter.ps1 - Install flutter
    * install_openjdk.ps1 - Install jdk
    * install_sdkmanager.ps1 - Install sdkmanger cmdline-tools
    * install_go.ps1 - Install golang
    * install_nodejs.ps1 - Install node.js
* vscode_run.cmd - Run vscode
* delete_all.cmd - Delete all installed
* console.cmd - Command prompt with the paths


## Install android sdk, emulator

* Run `console.cmd` then run below commands with all licenses with `y`
```cmd
sdkmanager.bat --sdk_root=%cd%\sdk --licenses
sdkmanager.bat --sdk_root=%cd%\sdk --list
sdkmanager.bat --sdk_root=%cd%\sdk --install "platforms;android-34"
sdkmanager.bat --sdk_root=%cd%\sdk --install "build-tools;34.0.0"
sdkmanager.bat --sdk_root=%cd%\sdk --install "platform-tools"
sdkmanager.bat --sdk_root=%cd%\sdk --install "cmdline-tools;latest"
sdkmanager.bat --sdk_root=%cd%\sdk --install "emulator"
sdkmanager.bat --sdk_root=%cd%\sdk --install "system-images;android-34;google_apis_playstore;x86_64"
```

```cmd
sdkmanager --sdk_root=%cd%\sdk --install "ndk-bundle"
```


## Trouble shooting

* AMD cpu - Error `CPU acceleration status: GVM is not installed on this machine`
	* Install hypervisor driver from https://github.com/google/android-emulator-hypervisor-driver-for-amd-processors/releases

