sudo dpkg --add-architecture i386

curl -L https://dl.winehq.org/wine-builds/winehq.key > winehq.key
apt-key add winehq.key


apt-add-repository https://dl.winehq.org/wine-builds/ubuntu
apt-get update
apt-get -y install --install-recommends winehq-stable
apt-get -y purge software-properties-common libdbus-glib-1-2 python3-dbus python3-gi python3-pycurl python3-software-properties
sudo apt-get -y install --no-install-recommends --allow-unauthenticated winehq-stable fakeroot libxss1
curl -L https://github.com/electron-userland/electron-builder-binaries/releases/download/wine-2.0.3-mac-10.13/wine-home.zip > /tmp/wine-home.zip && unzip /tmp/wine-home.zip -d /root/.wine && unlink /tmp/wine-home.zip

# get source

git clone https://github.com/PanJiaChen/electron-vue-admin.git
cd electron-vue-admin/
