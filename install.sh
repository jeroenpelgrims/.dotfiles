#!/bin/bash

# Base packages
packages=(
	stow
	less
	unzip
	hyprland
	hypridle
	hyprpaper
	hyprlock
	waybar
	alacritty
	htop
	rofi
	thunar
	xdg-desktop-portal
	openssh
	ripgrep
	neovim
	git
	ly
)
sudo pacman -Sy --noconfirm "${packages[@]}"

# AUR packages
aur_packages=(
    zen-browser-bin
    powerline-fonts-git
    oh-my-zsh-git
)
yay -Sy --noconfirm "${aur_packages[@]}"

# Install dotfiles
stow */

# Enable ly (display manager)
sudo systemctl enable ly@tty1.service

# Install other things
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Bun
curl -fsSL https://bun.com/install | bash
# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
# uv
curl -LsSf https://astral.sh/uv/install.sh | sh
