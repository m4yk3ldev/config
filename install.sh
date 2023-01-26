#!/bin/bash
echo "Instalando dependencias de Yay"
sudo pacman -S rofi wget kitty exa

echo "Install fonts "
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip
mkdir -p "$HOME/.fonts" && unzip JetBrainsMono.zip -d  "$HOME/.fonts"
rm -rfv "$PWD/JetBrainsMono.zip"
fc-cache -fv

echo "Agregando configuraciones al zsh"
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$HOME/.oh-my-zsh/themes/powerlevel10k"
    ln -sfv "$PWD"/.zshrc "$HOME/.zshrc"
    ln -sfv "$PWD/.p10k.zsh" "$HOME/.p10k.zsh"
fi


echo "Agregando configuraciones de Rofi"
mkdir -p "$HOME/.config/rofi/"
ln -sfv "$PWD/rofi/config.rasi" "$HOME/.config/rofi/config.rasi"

echo "Agregando configuraciones de Kitty"
mkdir -p "$HOME/.config/kitty/"
ln -sfv "$PWD/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"


