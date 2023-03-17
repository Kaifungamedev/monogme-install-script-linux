# Creating a folder called android_sdk in the home directory.
cd;
rm -r android_sdk
basename $(pwd)
mkdir android_sdk
cd android_sdk
# Downloading the Android SDK Build tools and unzipping it.
wget https://dl.google.com/android/repository/build-tools_r33-linux.zip
unzip build-tools_r33-linux.zip
mkdir build-tools
mv android-13 build-tools/33.0.0
rm build-tools_r33-linux.zip
# Downloading the Android SDK Tools and unzipping it.
wget https://dl.google.com/android/repository/tools_r25.2.5-linux.zip
unzip tools_r25.2.5-linux.zip
rm tools_r25.2.5-linux.zip
# downloading the command line tools 
wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip
unzip commandlinetools-linux-9477386_latest.zip
rm commandlinetools-linux-9477386_latest.zip
# Installing the Java Development Kit.
sudo apt-get install openjdk-11-jdk -y
sudo apt-get uptate
# Run the android tool manager
#android
~/android_sdk/cmdline-tools/bin/sdkmanager "platform-tools" "platforms;android-33" --sdk_root=./
~/android_sdk/cmdline-tools/bin/sdkmanager "platform-tools" "platforms;android-32" --sdk_root=./
~/android_sdk/cmdline-tools/bin/sdkmanager "platform-tools" "platforms;android-31" --sdk_root=./
~/android_sdk/cmdline-tools/bin/sdkmanager "platform-tools" "platforms;android-30" --sdk_root=./
# Installing the Microsoft package repository.
wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
# Installing the .NET Core SDK and Runtime.
sudo apt-get update
sudo apt-get install -y dotnet-sdk-6.0
sudo apt-get install -y dotnet-runtime-6.0
# Installing Visual Studio Code and the Actionkode C# extensions for Visual Studio Code.
sudo apt-get install code
sudo apt-get update
code --install-extension Actionkode.Actionkode-cs-devpack
dotnet new --install MonoGame.Templates.CSharp
sudo apt-get upgrade -y