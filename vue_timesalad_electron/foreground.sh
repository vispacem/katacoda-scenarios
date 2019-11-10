sudo dpkg --add-architecture i386
wget -nc dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
apt-add-repository https://dl.winehq.org/wine-builds/ubuntu
apt-get update
apt-get -y install --install-recommends winehq-stable
apt-get -y purge software-properties-common libdbus-glib-1-2 python3-dbus python3-gi python3-pycurl python3-software-properties
apt-get -y install --no-install-recommends winehq-stable fakeroot libxss1
