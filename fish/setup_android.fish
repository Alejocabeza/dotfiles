cd /home/USER/
sudo apt-get install unzip
wget https://dl.google.com/android/reposit...
unzip sdk-tools-linux-4333796.zip -d Android
rm sdk-tools-linux-4333796.zip
sudo apt-get install -y lib32z1 openjdk-8-jdk
set -Ux JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
set -Ux PATH $PATH:$JAVA_HOME/bin
cd Android/tools/bin
./sdkmanager "platform-tools" "platforms;android-26" "build-tools;26.0.3"
set -Ux ANDROID_HOME /home/USER/Android
set -Ux PATH $PATH:$ANDROID_HOME/tools
set -Ux PATH $PATH:$ANDROID_HOME/platform-tools
android update sdk --no-ui
sudo apt-get install gradle
gradle -v
adb start-server

