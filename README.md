Scripts for `Flutter` working set creation on MS-Windows

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

* `install_all.ps1` spawn below `ps1`/`cmd` files and create shortcut to Desktop
    * install_update_vscode.ps1 - Install or update vscode
        * ~~vscode_checksum_fix.ps1 - For [webfont](https://github.com/Joungkyun/font-d2coding-ligature). <b>Do not run directly<b>~~ Because of wsl extension launching failure, not use.
    * install_git.ps1 - Install git
    * install_flutter.ps1 - Install flutter
    * install_openjdk.ps1 - Install jdk
    * install_sdkmanager.ps1 - Install sdkmanger cmdline-tools
    * install_go.ps1 - Install golang
    * install_nodejs.ps1 - Install node.js
    * install_android_sdk_tools.cmd - Install android sdk, emulator
* vscode_run.cmd - Run vscode
* delete_all.cmd - Delete all setup
* console.cmd - Command prompt with the path, envs


## Trouble shooting
* AMD cpu - Error `CPU acceleration status: GVM is not installed on this machine`
	* Install hypervisor driver from https://github.com/google/android-emulator-hypervisor-driver-for-amd-processors/releases


License: Public domain.