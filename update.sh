#!/bin/sh
echo "Copying i3wm configuration"
cp ~/.config/i3/config ~/dotfiles/i3
echo "Copying i3blocks configuration"
cp ~/.i3blocks.conf ~/dotfiles/i3blocks
echo "Copying zsh configurations"
cp ~/.zprofile ~/dotfiles/zsh
cp ~/.zshrc ~/dotfiles/zsh
echo "Copying vim configuration"
cp ~/.vimrc ~/dotfiles/vim
echo "Copying X .xinitrc"
cp ~/.xinitrc ~/dotfiles/x
echo "Copying GTK configuration"
cp ~/.config/gtk-3.0/gtk.css ~/dotfiles/gtk
echo "Copying termite configuration"
cp ~/.config/termite/config ~/dotfiles/termite
echo "Successfully updated dotfiles :)"
