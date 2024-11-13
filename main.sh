#!/bin/bash

sudo -v

echo "Setting up dotfiles..."
./dotfiles.sh

echo "Configuring macOS settings..."
./macos.sh

echo "Installing Homebrew packages..."
./brew.sh
