sudo git clone https://github.com/resyu/Scratchpad.git
cd Scratchpad/
dpkg --add-architecture i386
wget https://dl.winehq.org/wine-builds/Release.key
apt-key add Release.key
apt-get update
apt-get install python-software-properties software-properties-common libicns-dev libicns1 -y
apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/'
apt-get update
apt-get install --install-recommends winehq-staging wine-gecko -y
