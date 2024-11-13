#!/bin/bash
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/bashrc ~/.bashrc
ln -sf ~/dotfiles/gitconfig ~/.gitconfig


print_in_purple "\n • Setup MacOS\n\n"
./macos.sh

print_in_purple "\n • Brew\n\n"
./brew.sh
