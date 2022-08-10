# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export PATH="$HOME/Applications:$PATH"

# Vagrant config
export VAGRANT_DEFAULT_PROVIDER=libvirt
export VAGRANT_LOG=info
. "$HOME/.cargo/env"
