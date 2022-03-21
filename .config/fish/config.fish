if status is-interactive

	## Disable greeting ##
	set -U fish_greeting

	## Make Neovim default IDe ##
	export EDITOR='nvim'
	export VISUAL='nvim'

	## Aliases ##
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

	## Init script ##
	colorscript random

	## Setting the starship prompt ##
	starship init fish | source
end
