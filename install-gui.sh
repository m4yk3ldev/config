#!/bin/bash
echo "Instalando dependencias de Yay"
yay -S rofi wget nerd-fonts-complete xfce4-screenshooter kitty exa

echo "Agregando configuraciones al zsh"
ln -sfv "$PWD"/.zshrc  "$HOME/.zshrc"


echo "Agregando configuraciones al zsh"
ln -sfv "$PWD/.p10k.zsh"  "$HOME/.p10k.zsh"

echo "Agregando configuraciones de Rofi"
mkdir -p "$HOME/.config/rofi/"
ln -sfv "$PWD/rofi/config.rasi" "$HOME/.config/rofi/config.rasi"

echo "Agregando configuraciones de Kitty"
mkdir -p "$HOME/.config/kitty/"
ln -sfv "$PWD/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
