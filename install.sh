#!/bin/bash
# Copiar los archivos en el $HOME

set -ex

echo "Enviando enlace .vimrc"
ln -sf $PWD/.vimrc $HOME/.vimrc

echo "Enviando enlace  a .vim"
ln -sf $PWD/.vim $HOME/.vim

echo "Enviando configuraciones de COC"
mkdir -p $HOME/.config/coc/
ln -sf $PWD/.vim/coc-settings.json $HOME/.config/coc/coc-settings.json

echo "Agregando configuraciones de i3"
mkdir -p .i3
ln -sf $PWD/.i3/config $HOME/.i3/config

echo "Agregando configuraciones al zsh"
cat $PWD/.zshrc >> $HOME/.zshrc

