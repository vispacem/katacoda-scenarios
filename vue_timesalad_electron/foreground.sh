sudo dpkg --add-architecture i386
wget -nc dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository dl.winehq.org/wine-builds/ubuntu/
sudo apt-get update
sudo apt-get install --install-recommends winehq-stable
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
