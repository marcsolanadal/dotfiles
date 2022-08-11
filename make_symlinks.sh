#! /bin/bash

# TODO: XDG env variables not working on scripts

# General config
ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/.bash_profile $HOME/.bash_profile
ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc

# Window manager
ln -s $HOME/dotfiles/.config/sway $XDG_CONFIG_HOME/sway
ln -s $HOME/dotfiles/.config/waybar $XDG_CONFIG_HOME/waybar
ln -s $HOME/dotfiles/.config/rofi $XDG_CONFIG_HOME/rofi
ln -s $HOME/dotfiles/.config/starship $XDG_CONFIG_HOME/starship
