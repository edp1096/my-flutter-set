$uri = "https://storage.googleapis.com/flutter_infra_release/releases/releases_windows.json"
$json = Invoke-WebRequest -UseBasicParsing -Uri $uri | ConvertFrom-Json

$link = ""
for ($i = 0; $i -lt $json.releases.Length; $i++) {
    if ($json.releases[$i].channel -eq "stable") {
        $link = $json.releases[$i].version
        break
    }
}

Write-Output $link | Out-File -FilePath "FLUTTER_VERSION" -encoding ASCII
