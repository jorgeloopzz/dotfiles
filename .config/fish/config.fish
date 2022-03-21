if status is-interactive

	## DISABLE GREETING ##
	set -U fish_greeting

	## MAKE NEOVIM DEFAULT IDE ##
	export EDITOR='nvim'
	export VISUAL='nvim'

	## ALIASES ##
	alias l="exa -la --icons"
	alias update="sudo pacman -Syu"
	alias install="sudo pacman -S"
	alias remove="sudo pacman -Rscu"
	alias search="pacman -Ss"
	alias cl="clear"
	alias lovesay="/home/jorge/.local/bin/lovesay"
	alias source="source .config/fish/config.fish .bashrc .zshrc"

	# Dotfiles aliases
	alias dotfiles="/usr/bin/env git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
	alias da="dotfiles add"
	alias dc="dotfiles commit -m"

	## INIT SCRIPT ##
	colorscript random

	## SETTING THE STARSHIP PROMPT ##
	starship init fish | source
end
