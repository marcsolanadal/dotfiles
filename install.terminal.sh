#! /bin/bash

## This script uses ubuntu 

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Dev tools
sudo apt install cmake 

# Terminal tools
sudo apt install tmux

# Install tools with cargo
cargo install bat --locked
cargo install git-delta --locked
cargo install exa --locked
cargo install ripgrep --locked
cargo install fd-find --locked

# Install fzf
t clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install NeoVim
mkdir -p $HOME/apps
cd $HOME/apps
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
cd -

# Creating symlinks for config files
ln -n $HOME/dotfiles/.config/tmux/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf
ln -s $HOME/dotfiles/.bash_profile $HOME/.bash_profile
ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc
ln -s $HOME/dotfiles/.config/starship/starship.toml $XDG_CONFIG_HOME/starship.tom

mkdir -p $XDG_CONFIG_HOME/git
ln -s $HOME/dotfiles/.config/git/config $XDG_CONFIG_HOME/git/config


