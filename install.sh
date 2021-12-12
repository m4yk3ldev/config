#!/bin/bash
# Copiar los archivos en el $HOME

set -ex

echo "Enviando enlace .vimrc"
ln -sf .vimrc ~/.vimrc

echo "Enviando enlace  a .vim"
ln -sf .vim ~/.vim

#echo "Agregando configuraciones al zsh"
#cat .zshrc >> ~/.zshrc

