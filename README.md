Scripts for `Flutter` toy creation on Windows


## Scripts

* `ExecutionPolicy` should be set to `RemoteSigned` and unblock `ps1` files
```powershell
# Check
ExecutionPolicy
# Set as RemoteSigned
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned

# Unblock ps1 files
Unblock-File *.ps1
```


* delete_all.cmd - Delete all installed
* console.cmd - Command prompt with the python path

* dart_install_update.cmd - Install dart-sdk

* Vscode, Git
    * vscode_git_install_update.cmd - Install vscode, git. Update vscode
        * GIT_DOWNLOAD_URL - Environment variable for vscode_git_install_update.cmd
        * vscode_checksum_fix.ps1 - For [webfont](https://github.com/Joungkyun/font-d2coding-ligature). <b>Do not run directly<b>
    * vscode_run.cmd - Run vscode

## Others

* MEMO.md - Memo for `sdkmanager`, `avd`, `emulator` using
* playground/ - Workspace for dart practice
