#!/bin/bash
# Copiar los archivos en el $HOME
set -ex

sudo pacman -S --needed neovim python-neovim

echo "Enviando enlace  a .nvim"
ln -sfv $PWD/nvim $HOME/.config/nvim
