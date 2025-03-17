# config aliases
alias zcfg="vim ~/.zshrc"
alias vcfg="cd ~/.config/nvim && vim ."

# git aliases
alias gauth="ssh -T git@github.com"
alias gp="git push"
alias gy="git pull"
alias gl="git log"
alias gd="git diff"
alias gs="git status"

alias gita="git add ."

function gitm() {
  if [ -z "$1" ]; then
    echo "Please provide a commit message."
    return 1
  fi
  git commit -m "$1"
}

function gitma() {
  git add . && gitm "$1"
}

alias gb="git branch --show-current 2>/dev/null | pbcopy"

# overloads
alias vim="nvim"
alias cat="bat"


# env variables
export EDITOR=nvim
export VISUAL=nvim

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/cfg.json)"
