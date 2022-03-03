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
	alias zzz="systemctl suspend"
	alias dotfiles="/usr/bin/env git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
	alias da="dotfiles add"
	alias dc="dotfiles commit -m"
	alias cl="clear"
	alias lovesay="/home/jorge/.local/bin/lovesay"

	## Init scripts ##
	colorscript random
end
