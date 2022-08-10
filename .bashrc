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

alias obsidian='~/Applications/Obsidian-0.14.6.AppImage'
alias correpi='ssh corretjola@correpi.local'
alias vim='nvim'

# Creates virtualenvs inside the project folder to avoid problems with subsequent path changes.
export PIPENV_VENV_IN_PROJECT=1
. "$HOME/.cargo/env"

eval "$(starship init bash)"
source /home/corretjola/alacritty/extra/completions/alacritty.bash

# Base16 Shell
BASE16_THEME="base16-circus"
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
	[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
	eval "$("$BASE16_SHELL/profile_helper.sh")"