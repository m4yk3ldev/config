#!/bin/bash

echo "Agregando configuraciones de i3"
mkdir -p $HOME/.i3
ln -sf $PWD/.i3/config $HOME/.i3/config

echo "Agregando configuraciones al zsh"
touch $HOME/.zshrc
ln -sf $PWD/.zshrc  $HOME/.zshrc

echo "Agregando configuraciones de Kitty"
mkdir -p $HOME/.config/kitty/
ln -sf $PWD/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
