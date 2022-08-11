
# TODO: Split desktop and terminal install scripts

# Install packages and clone repos
sudo dnf install sway waybar rofi alacritty starship
git clone https://github.com/chriskempson/base16-shell.git $XDG_DATA_HOME/base16-shell

# Download and install fonts
wget -P $XDG_DATA_HOME https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Inconsolata/complete/Inconsolata%20Nerd%20Font%20Complete%20Mono.otf
wget -P $XDG_DATA_HOME https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Medium/complete/Fira%20Code%20Medium%20Nerd%20Font%20Complete%20Mono.ttf
fc-cache -v ~/.local/share/fonts

# Download background
wget -P $XDG_PICTURES_DIR -O background.png http://static.simpledesktops.com/uploads/desktops/2015/02/20/zentree_1.png

# Create configuration symlinks
