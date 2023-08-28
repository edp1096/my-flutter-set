import-module bitstransfer

new-item -force -ea 0 -itemtype directory -path sdk | out-null

$downloadURL = "https://dl.google.com/android/repository/commandlinetools-win-8512546_latest.zip"

import-module bitstransfer
start-bitstransfer -destination sdk_cmdline-tools.zip -source $downloadURL
tar -xf sdk_cmdline-tools.zip
remove-item -force sdk_cmdline-tools.zip
