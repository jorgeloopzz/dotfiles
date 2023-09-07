if status is-interactive

	## DISABLE GREETING ##
	set -U fish_greeting

	## MAKE NEOVIM DEFAULT IDE ##
	export EDITOR='nvim'
	export VISUAL='nvim'

	## ALIASES ##
	alias l="exa -la --icons"
	alias cl="clear"
	alias fonts="fc-list : family | grep Nerd | sort | awk '{print $1 $2 $3}' | uniq"
	alias remove="sudo shred -zu"
	# Dotfiles aliases
	alias dotfiles="/usr/bin/env git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
	alias da="dotfiles add"
	alias dc="dotfiles commit -m"
	alias dp="dotfiles push origin master"

	## INIT SCRIPT ##
	colorscript random

	## SETTING THE STARSHIP PROMPT ##
	starship init fish | source
end
