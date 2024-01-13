export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

alias l="ls -lahtr"
alias vim="nvim"

export EDITOR="nvim";

# Path adjustment
export PATH=$PATH:$HOME/.cargo/bin
source "$HOME/.cargo/env"

alias logg="git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%an%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)- %s%C(reset)' --all"

set -o vi
set editing-mode vi
