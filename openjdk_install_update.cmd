@rem JAVA 11 - not work with AVD Manager
@rem curl -Lo openjdk.zip https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_windows-x64_bin.zip

@rem JAVA 1.8
curl -Lo openjdk.zip https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.332-1.b09/java-1.8.0-openjdk-1.8.0.332-1.b09.ojdkbuild.windows.x86_64.zip

tar -xf openjdk.zip

@rem JAVA 11
ren jdk-11.0.2 openjdk

@rem JAVA 1.8
ren java-1.8.0-openjdk-1.8.0.332-1.b09.ojdkbuild.windows.x86_64 openjdk

del openjdk.zip /q /s 1>nul
