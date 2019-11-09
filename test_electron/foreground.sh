# sudo git clone https://github.com/resyu/Scratchpad.git
# cd Scratchpad/
dpkg --add-architecture i386
wget https://dl.winehq.org/wine-builds/Release.key
apt-key add Release.key
apt-get update
apt-get install python-software-properties software-properties-common libicns-dev libicns1 -y
apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/'
apt-get update
apt-get install --install-recommends winehq-staging wine-gecko -y
curl -L https://github.com/electron-userland/electron-builder-binaries/releases/download/wine-2.0.3-mac-10.13/wine-home.zip > /tmp/wine-home.zip && unzip /tmp/wine-home.zip -d /root/.wine && unlink /tmp/wine-home.zip


