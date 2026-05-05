#!/bin/bash

# Base packages
packages=(
	syncthing
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
	powerline
	ttf-jetbrains-mono-nerd
	keepassxc
	pulseaudio
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

# Enable services
sudo systemctl enable ly@tty1.service
systemctl enable --user syncthing.service
systemctl enable --user pulseaudio.service


# Install other things
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Bun
curl -fsSL https://bun.com/install | bash
# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
# uv
curl -LsSf https://astral.sh/uv/install.sh | sh
