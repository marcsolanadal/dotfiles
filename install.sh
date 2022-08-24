# Enable RPM Fusion in Fedora
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# Media applications
sudo dnf install cmus mpv

# Wayland
sudo dnf install sway waybar rofi alacritty

# Terminal
git clone https://github.com/chriskempson/base16-shell.git $XDG_DATA_HOME/base16-shell
sudo dnf copr enable atim/lazygit -y
sudo dnf install git lazygit git-delta bat exa ripgrep procs fd-find starship

# Docker
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker

# Lazydocker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

# Download and install fonts
wget -P $XDG_DATA_HOME https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Inconsolata/complete/Inconsolata%20Nerd%20Font%20Complete%20Mono.otf
wget -P $XDG_DATA_HOME https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Medium/complete/Fira%20Code%20Medium%20Nerd%20Font%20Complete%20Mono.ttf
fc-cache -v ~/.local/share/fonts

# Download background
wget -P $XDG_PICTURES_DIR -O background.png http://static.simpledesktops.com/uploads/desktops/2015/02/20/zentree_1.png
