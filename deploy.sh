#!/bin/bash

dotfiles=(.zshrc .vimrc .vim)

for file in "${dotfiles[@]}"; do
  ln -svf ~/dotfiles/$file ~/$file
done
