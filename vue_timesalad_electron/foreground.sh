sudo dpkg --add-architecture i386

curl -L https://dl.winehq.org/wine-builds/winehq.key > winehq.key
apt-key add winehq.key


apt-add-repository https://dl.winehq.org/wine-builds/ubuntu
apt-get update
apt-get -y install --install-recommends winehq-stable
