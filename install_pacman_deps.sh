#!/bin/bash

# This script installs the key dependencies for these dotfiles on an Arch-based system.
# It uses pacman for official repository packages and assumes you have an AUR
# helper like 'yay' installed for AUR packages.

# --- Official Repositories ---
echo "Installing packages from official repositories..."
sudo pacman -S --needed \
    stow \
    i3-wm \
    alacritty \
    neovim \
    tmux \
    rofi \
    flameshot \
    xclip \
    jq \
    bitwarden-cli

# --- AUR Packages ---
# Check if yay is installed
if ! command -v yay &> /dev/null
then
    echo "-------------------------------------------------------------------"
    echo "AUR helper 'yay' not found."
    echo "Please install 'rofi-rbw' from the AUR manually to use rofi-rbw."
    echo "-------------------------------------------------------------------"
else
    echo "Installing packages from the AUR..."
    yay -S --needed rofi-rbw
fi

echo "Dependency installation script finished."
