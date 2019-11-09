sudo git clone https://github.com/resyu/Scratchpad.git
cd Scratchpad/

yes | apt-get purge wine* && apt-get autoremove && rm -rf .wine
dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
apt-key add winehq.key
apt-add-repository https://dl.winehq.org/wine-builds/debian/
apt-get install -y software-properties-common
apt-add-repository https://dl.winehq.org/wine-builds/debian/
apt-get update
apt-get install -y apt-transport-https
apt-get update
apt-get install -y --install-recommends winehq-stable
wine notepad.exe
