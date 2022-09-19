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

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
unset rc
 
EDITOR="nvim"
HISTTIMEFORMAT="%Y-%m-%d %T "
HISTCONTROL=ignoreboth

# App shortcuts
alias obsidian='~/Applications/Obsidian-0.14.6.AppImage'
alias vim='nvim'
alias lzg='lazygit'
alias lzd='lazydocker'
alias cat='bat'

# Servers
alias correpi='ssh corretjola@correpi.local'

# nnn

## Add Nord theme to nnn
BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

eval "$(starship init bash)"
#source $XDG_DATA_HOME/alacritty/extra/completions/alacritty.bash

# Base16 Shell
BAT_THEME="base16-256"
BASE16_THEME="base16-circus"
BASE16_SHELL="$XDG_DATA_HOME/base16-shell/"
[ -n "$PS1" ] && \
	[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
	eval "$("$BASE16_SHELL/profile_helper.sh")"
