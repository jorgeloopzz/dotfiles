#
# ~/.bashrc
#

#Ibus settings if you need them
#type ibus-setup in terminal to change settings and start the daemon
#delete the hashtags of the next lines and restart
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=dbus
#export QT_IM_MODULE=ibus

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

# Make nano the default editor

export EDITOR='nano'
export VISUAL='nano'

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
# Dotfiles aliases
alias dotfiles="/usr/bin/env git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
alias da="dotfiles add"
alias dc="dotfiles commit -m"
alias dp="dotfiles push origin master"

export PATH="$PATH:$HOME/.spicetify"

# Setting the starship prompt
eval "$(starship init bash)"

