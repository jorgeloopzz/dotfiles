if status is-interactive

	## DISABLE GREETING ##
	set -U fish_greeting

	## MAKE NEOVIM DEFAULT IDE ##
	export EDITOR='nvim'
	export VISUAL='nvim'

	## ALIASES ##
	alias l="eza -la --icons"
	alias cl="clear"
	alias buu="brew update && brew upgrade ; brew cleanup"
	alias fishcfg="nvim $HOME/.config/fish/config.fish && source $HOME/.config/fish/config.fish"

	# DOTFILES ALIASES
	alias dotfiles="/usr/bin/env git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"

	## USE HOMEBREW ON MAC OS ##
	export PATH="/opt/homebrew/bin:$PATH"

	## SETTING THE STARSHIP PROMPT ##
	starship init fish | source

	## INIT SCRIPT ##
	colorscript random

end
