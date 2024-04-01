#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


# Custom aliases
alias sudo='sudo '
alias ll='ls -la --color=auto'
alias vim=nvim
alias vi=nvim

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH


# starship setup
eval "$(starship init bash)"
