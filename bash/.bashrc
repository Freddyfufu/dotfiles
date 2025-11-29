# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

source ~/.local/share/omarchy/default/bash/rc

# prettify man pages
eval "$(batman --export-env)"
# walk through filterable files in directory with instant formatted output (actually insane!) 
alias f='fzf --preview "preview.sh {}"'
# fuck cat  
alias cat=bat
alias ll='ls -la'



# export envs
export BAT_CONFIG_PATH='~/.config/bat-config'
