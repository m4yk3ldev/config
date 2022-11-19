#!/bin/bash

echo "Instalando los componentes  visuales de GNU"

echo "Instalando dependencias de YAY"
sudo pacman -S --needed git base-devel
cd $HOME
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd $HOME 
rm -rfv yay

yay -S i3 zsh kitty i3status-rust rofi volumeicon wezterm wget network-manager-applet pulseaudio nerd-fonts-complete

echo "Agregando configuraciones de i3"
mkdir -p $HOME/.i3
ln -sfv $PWD/.i3/config $HOME/.i3/config

echo "Agregando configuraciones al zsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sfv $PWD/.zshrc  $HOME/.zshrc


echo "Agregando configuraciones al zsh"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/themes/powerlevel10k
ln -sfv $PWD/.p10k.zsh  $HOME/.p10k.zsh

echo "Agregando configuraciones de Kitty"
mkdir -p $HOME/.config/kitty/
ln -sfv $PWD/kitty/kitty.conf $HOME/.config/kitty/kitty.conf

echo "Agregando configuraciones de i3status"
ln -sfv $PWD/.i3/theme-i3status.toml $HOME/.i3/theme.toml


echo "Agregando configuraciones de Rofi"
mkdir -p $HOME/.config/rofi/
ln -sfv $PWD/rofi/config.rasi $HOME/.config/rofi/config.rasi

echo "Agregando configuraciones de VolumeIco"
mkdir -p $HOME/.config/volumeicon
ln -sfv $PWD/volumeicon/volumeicon $HOME/.config/volumeicon/volumeicon

echo "Agregando configuraciones de WezTerm"
mkdir -p $HOME/.config/wezterm/
ln -sfv $PWD/wezterm/wezterm.lua $HOME/.config/wezterm/wezterm.lua
