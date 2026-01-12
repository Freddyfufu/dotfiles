# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

export PS1="\[\e[35m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[35m\]@\[\e[m\]\[\e[1;34m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[35m\]]\[\e[m\]\[\e[32m\]\\$\[\e[m\] "

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
# copy file input to clipboard
alias clip='xclip -sel c <'

# File manager
alias r=ranger

# Fuck cat  
alias cat=bat


# Environment variables

export BAT_CONFIG_PATH=$HOME/.config/bat-config
# use my nvidia gpu for local LLM's
export CUDA_VISIBLE_DEVICES=GPU-a7c3436d-8548-8cc2-11c0-9934bfd76b06
