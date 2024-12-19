#  _____  _____ __  __
# /__  / / ___// / / /
#   / /  \__ \/ /_/ / 
#  / /_____/ / __  /  
# /____/____/_/ /_/   
#
# https://github.com/jorgeloopzz

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

### THEME ###
ZSH_THEME="agnoster"

### IDE ###
export EDITOR='nvim'
export VISUAL='nvim'

# Set list of themes to pick from when loading at random
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if you want to change the command execution time
HIST_STAMPS="dd/mm/yyyy"

### PLUGINS ### 
plugins=(
git 
zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

## ALIASES ##
alias l="exa -la --icons"
alias cl="clear"
alias fonts="fc-list : family | grep Nerd | sort | awk '{print $1 $2 $3}' | uniq"
alias remove="sudo shred -zvu"
# Dotfiles aliases
alias dotfiles="/usr/bin/env git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
alias da="dotfiles add"
alias dc="dotfiles commit -m"
alias dp="dotfiles push origin master"

colorscript random

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="$PATH:$HOME/.spicetify"

export NNN_COLORS="2136"
