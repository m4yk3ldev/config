#!/bin/bash
echo "Instalando dependencias de Trizen"
trizen -S rofi wezterm wget nerd-fonts-complete arandr i3status-rust i3-scrot spotify-tui-bin xfce4-screenshooter kitty

echo "Agregando configuraciones de i3"
mkdir -p $HOME/.i3
ln -sfv $PWD/.i3/config $HOME/.i3/config

echo "Agregando configuraciones al zsh"
ln -sfv $PWD/.zshrc  $HOME/.zshrc


echo "Agregando configuraciones al zsh"
ln -sfv $PWD/.p10k.zsh  $HOME/.p10k.zsh

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

echo "Agregando configuraciones de Kitty"
mkdir -p $HOME/.config/kitty/
ln -sfv $PWD/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
