#!/bin/bash
# Copiar los archivos en el $HOME
set -ex

echo "Enviando enlace .vimrc"
ln -sfv $PWD/.vimrc $HOME/.vimrc

echo "Enviando enlace  a .vim"
ln -sfv $PWD/.vim $HOME/.vim

echo "Enviando configuraciones de COC"
mkdir -p $HOME/.config/coc/
ln -sfv $PWD/.vim/coc-settings.json $HOME/.config/coc/coc-settings.json

echo "Enviando enlace  a .nvim"
ln -sfv $PWD/nvim $HOME/.config/nvim
