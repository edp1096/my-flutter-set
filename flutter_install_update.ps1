$uri = "https://storage.googleapis.com/flutter_infra_release/releases/releases_windows.json"
$json = Invoke-WebRequest -UseBasicParsing -Uri $uri | ConvertFrom-Json

$flutterVersion = ""
for ($i = 0; $i -lt $json.releases.Length; $i++) {
    if ($json.releases[$i].channel -eq "stable") {
        $flutterVersion = $json.releases[$i].version
        break
    }
}

remove-item -r -force -ea 0 flutter
new-item -itemtype directory -path flutter | out-null

import-module bitstransfer
start-bitstransfer -destination flutter.zip -source https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_$flutterVersion-stable.zip
tar -xf flutter.zip
remove-item -force flutter.zip
