# install wine
apt-get update
apt-get install -y --no-install-recommends software-properties-common
sudo dpkg --add-architecture i386
sudo curl -L https://dl.winehq.org/wine-builds/winehq.key > winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu
sudo apt-get update
sudo apt-get -y purge software-properties-common libdbus-glib-1-2 python3-dbus python3-gi python3-pycurl python3-software-properties
sudo apt-get install -y --no-install-recommends winehq-stable fakeroot libxss1
# clean
sudo apt-get clean && rm -rf /var/lib/apt/lists/* && unlink winehq.key
sudo curl -L https://github.com/electron-userland/electron-builder-binaries/releases/download/wine-2.0.3-mac-10.13/wine-home.zip > /tmp/wine-home.zip && unzip /tmp/wine-home.zip -d /root/.wine && unlink /tmp/wine-home.zip
# clone Scratchpad source
git clone https://github.com/vispacem/TIMESALAD.git
cd TIMESALAD/
npm install
# unsupported platform for fsevents@1.2.4: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})
npm run build
cd build/
# send to ffsend
wget https://github.com/timvisee/ffsend/releases/download/v0.2.55/ffsend-v0.2.55-linux-x64-static
chmod 777 ff*
./ffsend* upload scr* -h https://stage.send.nonprod.cloudops.mozgcp.net/
