#     _______________ __  __
#    / ____/  _/ ___// / / /
#   / /_   / / \__ \/ /_/ / 
#  / __/ _/ / ___/ / __  /  
# /_/   /___//____/_/ /_/   
#
# https://github.com/jorgeloopzz

if status is-interactive

	## DISABLE GREETING ##
	set -U fish_greeting

	## MAKE NEOVIM DEFAULT IDE ##
	export EDITOR='nvim'
	export VISUAL='nvim'

	## ALIASES ##
	alias l="eza -la --icons"
	alias cl="clear"
	alias fonts="fc-list : family | grep Nerd | sort | awk '{print $1 $2 $3}' | uniq"
	alias remove="sudo shred -zu"
	alias update="sudo pacman -Syu ; sudo pacman -Sc"
	alias fishcfg="nvim $HOME/.config/fish/config.fish && source $HOME/.config/fish/config.fish"

	# DOTFILES ALIASES
	alias dotfiles="/usr/bin/env git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
	alias da="dotfiles add"
	alias dc="dotfiles commit -m"
	alias dp="dotfiles push origin master"

	## INIT SCRIPT ##
	colorscript random

	## SETTING THE STARSHIP PROMPT ##
	starship init fish | source

end
