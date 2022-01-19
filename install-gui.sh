#!/bin/bash

echo "Agregando configuraciones de i3"
mkdir -p $HOME/.i3
ln -sfv $PWD/.i3/config $HOME/.i3/config

echo "Agregando configuraciones al zsh"
ln -sfv $PWD/.zshrc  $HOME/.zshrc

echo "Agregando configuraciones de Kitty"
mkdir -p $HOME/.config/kitty/
ln -sfv $PWD/kitty/kitty.conf $HOME/.config/kitty/kitty.conf

echo "Agregando configuraciones de i3status"
ln -sfv $PWD/.i3/theme-i3status.toml $HOME/.i3/theme.toml
