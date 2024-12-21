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
	alias update="brew update && brew upgrade ; brew cleanup"
	alias fishcfg="nvim $HOME/.config/fish/config.fish && source $HOME/.config/fish/config.fish"

	# DOTFILES ALIASES
	alias dotfiles="/usr/bin/env git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
	alias da="dotfiles add"
	alias dc="dotfiles commit -m"
	alias dp="dotfiles push origin mac"

	## USE HOMEBREW  ##
	export PATH="/opt/homebrew/bin:$PATH"

	## SETTING THE STARSHIP PROMPT ##
	starship init fish | source

	## INIT SCRIPT ##
	colorscript random

end
