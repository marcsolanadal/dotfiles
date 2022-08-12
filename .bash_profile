# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export PATH="$HOME/Applications:$PATH"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# Vagrant config
export VAGRANT_DEFAULT_PROVIDER=libvirt
export VAGRANT_LOG=info
#. "$HOME/.cargo/env"
