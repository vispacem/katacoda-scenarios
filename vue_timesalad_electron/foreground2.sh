apt-get -y purge software-properties-common libdbus-glib-1-2 python3-dbus python3-gi python3-pycurl python3-software-properties
apt-get -y install --no-install-recommends --allow-unauthenticated winehq-stable fakeroot libxss1
curl -L https://github.com/electron-userland/electron-builder-binaries/releases/download/wine-2.0.3-mac-10.13/wine-home.zip > /tmp/wine-home.zip && unzip /tmp/wine-home.zip -d /root/.wine && unlink /tmp/wine-home.zip

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
