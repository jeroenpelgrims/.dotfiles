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
