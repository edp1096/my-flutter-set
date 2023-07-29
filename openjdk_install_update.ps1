import-module bitstransfer

# Oracle
# $downloadURL = "https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_windows-x64_bin.zip"
# $extractName = ".\jdk-11.0.2"
# ojdkbuild
$downloadURL = "https://github.com/ojdkbuild/ojdkbuild/releases/download/java-11-openjdk-11.0.15.9-1/java-11-openjdk-11.0.15.9-1.windows.ojdkbuild.x86_64.zip"
$extractName = ".\java-11-openjdk-11.0.15.9-1.windows.ojdkbuild.x86_64"
start-bitstransfer -destination openjdk.zip -source $downloadURL
tar -xf openjdk.zip
remove-item -force -ea 0 openjdk.zip

start-sleep -seconds 1
rename-item -path $extractName -newname openjdk
