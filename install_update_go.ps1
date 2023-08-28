$versionURI = "https://go.dev/VERSION?m=text"
$response = Invoke-WebRequest -UseBasicParsing -Uri $versionURI
$goVersion = ($response.Content -split "`n")[0]

import-module bitstransfer
start-bitstransfer -destination go.zip -source https://go.dev/dl/$goVersion.windows-amd64.zip
tar -xf go.zip
remove-item -force go.zip
