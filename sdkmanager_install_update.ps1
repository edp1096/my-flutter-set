import-module bitstransfer

new-item -force -ea 0 -itemtype directory -path sdk | out-null

$downloadURL = "https://dl.google.com/android/repository/commandlinetools-win-8512546_latest.zip"

import-module bitstransfer
start-bitstransfer -destination sdk.zip -source $downloadURL
tar -xf sdk.zip -C sdk
remove-item -force sdk.zip
