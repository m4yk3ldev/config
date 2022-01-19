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

echo "Enviando enlace  a .nvim"
ln -sf $PWD/nvim $HOME/.config/nvim
