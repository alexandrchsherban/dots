#!/usr/bin/bash
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 1
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false
gsettings set org.gnome.shell.keybindings switch-to-application-1 []
gsettings set org.gnome.shell.keybindings switch-to-application-2 []
gsettings set org.gnome.shell.keybindings switch-to-application-3 []
gsettings set org.gnome.shell.keybindings switch-to-application-4 []
gsettings set org.gnome.shell.keybindings switch-to-application-5 []
gsettings set org.gnome.shell.keybindings switch-to-application-6 []
gsettings set org.gnome.shell.keybindings switch-to-application-7 []
gsettings set org.gnome.shell.keybindings switch-to-application-8 []
gsettings set org.gnome.shell.keybindings switch-to-application-9 []
gsettings set org.gnome.shell.window-switcher current-workspace-only false
sudo apt update 
sudo apt upgrade -y 
sudo apt install apt-transport-https curl wget gnome-tweaks neofetch git python3-pip python3-venv tmux libglib2.0-dev xclip xsel -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
sudo add-apt-repository ppa:kisak/kisak-mesa -y
sudo dpkg --add-architecture i386 
sudo apt update -y
sudo apt upgrade -y
sudo apt install libgl1-mesa-dri:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386 -y
mkdir ~/dev
cd ~/dev
git clone https://github.com/alexandrchsherban/dots
cd dots
cp wallpaper.png pfp.png ~/Pictures/
gsettings set org.gnome.desktop.background picture-uri "$HOME/Pictures/wallpaper.png"
cp -r nvim ~/.config/
cp .tmux.conf ~
sudo cp scripts/* /usr/bin/
sudo chmod +x /usr/bin/*
sudo wget -O /usr/bin/nvim https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
sudo chmod +x /usr/bin/nvim
cd ~/Downloads
git clone https://github.com/thiggy01/change-gdm-background
sudo ./change-gdm-background/change-gdm-background ~/Pictures/wallpaper.png
