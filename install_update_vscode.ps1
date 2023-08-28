$workingMode = "install"
if (Test-Path -Path "vscode" -PathType Container) {
    $workingMode = "update"
}

if ($workingMode -eq "install") {
    new-item -force -ea 0 -itemtype directory -path vscode\data\user-data\User | out-null
}


start-bitstransfer -destination vscode.zip -source https://go.microsoft.com/fwlink/?Linkid=850641
tar -xf vscode.zip -C vscode
copy-item -force assets\*.json vscode\data\user-data\User
remove-item -force vscode.zip


if ($workingMode -eq "update") {
    exit
}

cd vscode
$env:NODE_NO_WARNINGS = 1
bin\code.cmd --extensions-dir .\data\extension --user-data-dir .\data\user-data --install-extension vscode-icons-team.vscode-icons
bin\code.cmd --extensions-dir .\data\extension --user-data-dir .\data\user-data --install-extension dart-code.flutter
bin\code.cmd --extensions-dir .\data\extension --user-data-dir .\data\user-data --install-extension golang.Go
$env:NODE_NO_WARNINGS = 0
cd ..

.\create_shortcut.ps1
copy-item "Flutter Code.lnk" $env:UserProfile\desktop

<# Because of wsl error so, comment out below webfont setting. #>
#$workbenchDesktopMainCSS=".\vscode\resources\app\out\vs\workbench\workbench.desktop.main.css"
#$appendContent="`
#@font-face{
# font-family: 'D2Coding ligature';
# src: url('https://cdn.jsdelivr.net/gh/joungkyun/font-d2coding-ligature/D2Coding-ligature.eot?#iefix') format('embedded-opentype'),`
# url('https://cdn.jsdelivr.net/gh/joungkyun/font-d2coding-ligature/D2Coding-ligature.woff2') format('woff2'),`
# url('https://cdn.jsdelivr.net/gh/joungkyun/font-d2coding-ligature/D2Coding-ligature.woff') format('woff'),`
# url('https://cdn.jsdelivr.net/gh/joungkyun/font-d2coding-ligature/D2Coding-ligature.ttf') format('truetype'); font-weight: normal; font-style: normal;`
#}`
#@import url('http://fonts.cdnfonts.com/css/cascadia-code');"
#Add-Content -path $workbenchDesktopMainCSS -value $appendContent
#.\vscode_checksum_fix.ps1
