#!/bin/bash

# Base packages
packages=(
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

# Install other things
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Bun
curl -fsSL https://bun.com/install | bash
# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
