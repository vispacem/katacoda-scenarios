sudo dpkg --add-architecture i386

curl -L https://dl.winehq.org/wine-builds/winehq.key > winehq.key
apt-key add winehq.key


apt-add-repository https://dl.winehq.org/wine-builds/ubuntu
apt-get update
apt-get -y install --install-recommends winehq-stable
apt-get -y purge software-properties-common libdbus-glib-1-2 python3-dbus python3-gi python3-pycurl python3-software-properties
sudo apt-get -y install --no-install-recommends --allow-unauthenticated winehq-stable fakeroot libxss1
# get source

git clone https://github.com/zone1240/electron-vue-app-demo.git
cd electron-vue-app-demo/
yarn install
yarn run build:win32
cd build/
tar -cjvf archive.tar.bz2 electron-vue-app-demo-win32-x64


# send to ffsend
wget https://github.com/timvisee/ffsend/releases/download/v0.2.55/ffsend-v0.2.55-linux-x64-static
chmod 777 ff*
./ffsend* upload archive* -h https://stage.send.nonprod.cloudops.mozgcp.net/
