
echo "Agregando configuraciones de i3"
mkdir -p $HOME/.i3
ln -sf $PWD/.i3/config $HOME/.i3/config

echo "Agregando configuraciones al zsh"
touch $HOME/.zshrc
ln -sf $PWD/.zshrc  $HOME/.zshrc
