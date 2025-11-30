# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

source ~/.local/share/omarchy/default/bash/rc

# Prettify man pages
eval "$(batman --export-env)"

# Functions

# Walk through filterable files in directory with instant formatted output (actually insane!) 
# and edit directly with nvim after entering file 
f () 
{
      local file
      file=$(fzf --preview "preview.sh {}")
      if [ -n "$file" ]; then
        nvim "$file"
      fi
}


# Aliases

alias ls='eza -lh --group-directories-first --icons=auto'
alias ll='ls -la'
alias lt='eza --tree --level=2 --long --icons --git'
alias tree='eza --tree'

# File manager
alias r=ranger

# Fuck cat  
alias cat=bat


# Environment variables

export BAT_CONFIG_PATH='~/.config/bat-config'
