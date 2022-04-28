#Remover programas desnecessarios
sudo apt autoremove qtpass screengrab 2048-qt quassel transmission-qt transmission-common skanlite picom noblenote compton info -y

#Atualuizar
sudo apt update
sudo apt upgrade -y

#Instalar programas
cd Downloads/
sudo apt install git chromium-browser gnome-screenshot lxtask deepin-icon-theme gedit gparted gimp inkscape vlc unrar curl qt5-gtk2-platformtheme -y

#Instalar spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1l-1ubuntu1_amd64.deb
sudo apt update
sudo apt install spotify-client ./libssl1.1_1.1.1l-1ubuntu1_amd64.deb
