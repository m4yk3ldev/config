#!/bin/bash
# Copiar los archivos en el $HOME
set -ex

echo "Enviando configuraciones de COC"
mkdir -p $HOME/.config/coc/
ln -sfv $PWD/nvim/extras/coc-settings.json $HOME/.config/coc/coc-settings.json

echo "Enviando enlace  a .nvim"
ln -sfv $PWD/nvim $HOME/.config/nvim
