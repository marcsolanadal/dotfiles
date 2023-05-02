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

# Install Lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
lazygit --version

# Creating symlinks for config files
ln -n $HOME/dotfiles/.config/tmux/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf
ln -s $HOME/dotfiles/.bash_profile $HOME/.bash_profile
ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc
ln -s $HOME/dotfiles/.config/starship/starship.toml $XDG_CONFIG_HOME/starship.tom

