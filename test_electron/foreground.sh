sudo git clone https://github.com/resyu/Scratchpad.git
cd Scratchpad/

apt-get update && apt-get install -y --no-install-recommends software-properties-common && dpkg --add-architecture i386 && curl -L https://dl.winehq.org/wine-builds/winehq.key > winehq.key && apt-key add winehq.key && apt-add-repository https://dl.winehq.org/wine-builds/ubuntu
apt-get update
apt-get -y purge software-properties-common libdbus-glib-1-2 python3-dbus python3-gi python3-pycurl python3-software-properties
apt-get install -y --no-install-recommends winehq-stable
# clean
apt-get clean && rm -rf /var/lib/apt/lists/* && unlink winehq.key

