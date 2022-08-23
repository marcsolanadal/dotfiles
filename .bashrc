# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

HISTTIMEFORMAT="%Y-%m-%d %T "
HISTCONTROL=ignoreboth

# App shortcuts
alias obsidian='~/Applications/Obsidian-0.14.6.AppImage'
alias vim='nvim'

# Servers
alias correpi='ssh corretjola@correpi.local'

eval "$(starship init bash)"
#source $XDG_DATA_HOME/alacritty/extra/completions/alacritty.bash

# Base16 Shell
BASE16_THEME="base16-circus"
BASE16_SHELL="$XDG_DATA_HOME/base16-shell/"
[ -n "$PS1" ] && \
	[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
	eval "$("$BASE16_SHELL/profile_helper.sh")"
