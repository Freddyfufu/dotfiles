# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

source ~/.local/share/omarchy/default/bash/rc


# Prettify man pages
eval "$(batman --export-env)"

# Aliases

alias ls='eza -lh --group-directories-first --icons=auto'
alias ll='ls -la'
alias lt='eza --tree --level=2 --long --icons --git'
alias tree='eza --tree'

# Walk through filterable files in directory with instant formatted output (actually insane!) 
alias f='fzf --preview "preview.sh {}"'

# Fuck cat  
alias cat=bat


# Environment variables

export BAT_CONFIG_PATH='~/.config/bat-config'
