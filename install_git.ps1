$uri = "https://api.github.com/repos/git-for-windows/git/releases/latest"

$json = Invoke-WebRequest -UseBasicParsing -Uri $uri | ConvertFrom-Json

$versions = $json.name.Split()
$version = $versions[$versions.length - 1]
$version = $version -replace "\.windows.*",  ""
$version = $version -replace "v",  ""

$asset = $json.assets | Where-Object { $_.name -match "busybox-64-bit.zip" }

$gitDownloadURL = $asset.browser_download_url


import-module bitstransfer

new-item -force -ea 0 -itemtype directory -path git | out-null
start-bitstransfer -destination git.zip -source $gitDownloadURL
tar -xf git.zip -C git
remove-item -force git.zip
