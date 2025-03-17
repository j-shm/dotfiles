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

function gitma() {
  if [ -z "$1" ]; then
    echo "Please provide a commit message."
    return 1
  fi
  git add . && git commit -m "$1"
}

# overloads
alias vim="nvim"

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/cfg.json)"
