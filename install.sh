#!/bin/bash
# Copiar los archivos en el $HOME

set -ex

echo "Enviando enlace .vimrc"
ln -sf /home/adminred/config-vim/.vimrc ~/.vimrc

echo "Enviando enlace  a .vim"
ln -sf /home/adminred/config-vim/.vim ~/.vim

