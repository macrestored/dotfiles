#!/bin/sh
sudo apt install i3 i3lock vim git libxft-dev xinit libx1ll-devel
# sudo pacman -y i3 i3lock vim git libxft-dev xinit libx11-devel

# install st
git clone https://git.suckless.org/st
cd st
rm -rf config.def.h
curl https://raw.githubusercontent.com/machooper/dotfiles/main/config.def.h > config.def.h
sudo make clean install
cd ~
rm -rf st

# clone config files
git clone https://github.com/machooper/dotfiles > ~/.config
cd ~/.config
mv .vimrc .xinitrc .bash_profile ~
mv .shellrc ~/.bashrc

# source code pro font setup
mkdir ~/.local/share/fonts
wget https://github.com/adobe-fonts/source-code-pro/releases/download/2.038R-ro%2F1.058R-it%2F1.018R-VAR/OTF-source-code-pro-2.038R-ro-1.058R-it.zip > scp.zip
unzip scp.zip
cd scp
mv SourceCodePro-regular.otf > ~/.local/share/fonts
mv SourceCodePro-Light.otf > ~/.local/share/fonts
mv SourceCodePro-Bold.otf > ~/.local/share/fonts
rm -rf scp scp.zip
cd ~

# install nodejs 
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
sudo apt install -y nodejs

# install yarn
npm install --global yarn

# install node packages
yarn global add vercel nextjs

# git config
git config --global user.name 'Mac'
git config --global user.email '65713232+machooper@users.noreply.github.com'

# ssh
ssh-keygen -q -t rsa -N ''

# create folder structure
mkdir docs
