#     ____  ___   _____ __  __
#    / __ )/   | / ___// / / /
#   / __  / /| | \__ \/ /_/ / 
#  / /_/ / ___ |___/ / __  /  
# /_____/_/  |_/____/_/ /_/   
#
# https://github.com/jorgeloopzz

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

# Make Neovim the default editor
export EDITOR='nvim'
export VISUAL='nvim'

PS1='[\u@\h \W]\$ '

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

## Aliases ##
alias l="exa -la --icons"
alias cl="clear"
alias fonts="fc-list : family | grep Nerd | sort | awk '{print $1 $2 $3}' | uniq"
alias remove="sudo shred -zvu"
alias update="sudo pacman -Syu ; sudo pacman -Sc"

# Dotfiles aliases
alias dotfiles="/usr/bin/env git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
alias da="dotfiles add"
alias dc="dotfiles commit -m"
alias dp="dotfiles push origin master"

export PATH="$PATH:$HOME/.spicetify"

# Setting the starship prompt
eval "$(starship init bash)"

