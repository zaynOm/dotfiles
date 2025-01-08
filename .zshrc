export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-syntax-highlighting sudo zsh-autosuggestions )

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"
eval "$(ssh-agent -s)" > /dev/null

export ANDROID_HOME=$HOME/Android/Sdk
source /usr/share/nvm/init-nvm.sh

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias pn=pnpm
alias px=pnpx
alias vim=nvim
alias vi=nvim
alias py='python'
alias ff='fastfetch'
alias lg=lazygit
alias zr='zoxide remove $(zoxide query -l | fzf)'

export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH


if [[ -z "$NVIM" ]] && [[ $(tty) == *"pts"* ]] && [[ -z "$TMUX" ]]; then
  fastfetch
fi

export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

source <(fzf --zsh)

eval "$(zoxide init --cmd cd zsh)"

function sesh-sessions() {
  {
    exec </dev/tty
    exec <&1
    local session
    session=$(sesh list -i | fzf --ansi --height 40% --reverse --border-label ' sesh ' --border --prompt '⚡  ')
    zle reset-prompt > /dev/null 2>&1 || true
    [[ -z "$session" ]] && return
    sesh connect $session
  }
}

zle     -N             sesh-sessions
bindkey -M emacs '\es' sesh-sessions
bindkey -M vicmd '\es' sesh-sessions
bindkey -M viins '\es' sesh-sessions

export PATH="$HOME/.flutter/bin:$PATH"

# yazi config
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# set vi keybindings
set -o vi
