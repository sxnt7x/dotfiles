#!/bin/bash

set -e

echo "    __  __     ____         __  __                  "
echo "   / / / /__  / / /___     / /_/ /_  ___  ________  "
echo "  / /_/ / _ \/ / / __ \   / __/ __ \/ _ \/ ___/ _ \\"
echo " / __  /  __/ / / /_/ /  / /_/ / / /  __/ /  /  __/ "
echo "/_/ /_/\___/_/_/\____/   \__/_/ /_/\___/_/   \___/  "
echo

echo "Would you like to install the required dependencies? (homebrew and oh-my-zsh must already be installed)"

while true; do
    read -p "(Y-n)" opt

    if [[ "$opt" == "" || "$opt" == "y" ]]; then
        echo "Installing dependencies..."
        # Install dependencies
        brew install nvim starship fastfetch gh yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide resvg imagemagick font-symbols-only-nerd-font stow tmux
        brew install --cask ghostty wezterm
        echo "Done"
        break
    elif [[ "$opt" == "n" ]]; then
        break
    else
        echo "Please put a valid option"
  fi
done

echo "Setting up symlinks..."

# Setup symlinks with stow
cd ~/.dotfiles
stow -t ~/.config nvim
stow -t ~/.config starship
stow -t ~/.config ghostty
stow -t ~/.config fastfetch
stow -t ~/.config yazi
stow -t ~/.config gh
stow -t ~ wezterm
stow -t ~ zsh
stow -t ~ tmux
echo "Done"

echo "Preparing packages..."

# Prepare needed packages
tmux source ~/.tmux.conf
echo "Done"

echo "Enjoy your setup!"
