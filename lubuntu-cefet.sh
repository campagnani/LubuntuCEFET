#Script para configurar Lubuntu 22.04 para o laboratório de robótica


#Configurar usuários
sudo passwd  root         #Crie uma senha para o root
sudo adduser renato       #Crie o usuário do coordenandor do laboratótio
sudo adduser renato sudo  #Adicione o usuário do coordenandor ao grupo sudo
sudo deluser aluno  sudo  #Remove o usuário aluno ao grupo sudo


#Remover programas desnecessários
sudo apt autoremove qtpass\
screengrab\
2048-qt\
quassel\
transmission-qt\
transmission-common\
skanlite\
picom\
noblenote\
compton\
info\
-y


#Atualuizar S.O.
sudo apt update
sudo apt upgrade -y


#Instalar Programas Básicos
sudo apt install git\     #Git
chromium-browser\         #Navegador web
deepin-icon-theme\        #Temas de icones do Deepin
qt5-gtk2-platformtheme\   #Suporte a temas GTK2
gnome-screenshot\         #Programa de capitura de tela do GNOME
gedit\                    #Editor de texto do GNOME
gparted\                  #Editor de partições do GNOME
gimp\                     #Editor de imagens do GNOME
inkscape\                 #Editor de imagens vetoriais
vlc\                      #Reprodutor de vídeo e audio
unrar\                    #Descompactar arquivos rar
curl\                     #Baixar arquivos e scripts pelo terminal
-y                        #Responder sim a todas perguntas


#Instalar spotify
cd Downloads/
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1l-1ubuntu1_amd64.deb
sudo apt update
sudo apt install spotify-client ./libssl1.1_1.1.1l-1ubuntu1_amd64.deb
rm libssl1.1_1.1.1l-1ubuntu1_amd64.deb
