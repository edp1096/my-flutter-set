$uri = "https://storage.googleapis.com/dart-archive/channels/stable/release/latest/VERSION"
$json = Invoke-WebRequest -UseBasicParsing -Uri $uri | ConvertFrom-Json

Write-Output $json.version | Out-File -FilePath "DART_VERSION" -encoding ASCII
