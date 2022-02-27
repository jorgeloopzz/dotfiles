if status is-interactive
	set -U fish_greeting
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
	colorscript random
end
