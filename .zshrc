# config aliases
alias zcfg="vim ~/.zshrc"
alias vcfg="cd ~/.config/nvim && vim ."

# random aliases
alias cl="clear"

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

function dev() {
  if git show-ref --quiet refs/heads/main; then
    git checkout main
  elif git show-ref --quiet refs/heads/master; then
    git checkout master
  elif git show-ref --quiet refs/heads/development; then
    git checkout development
  else
    echo "Neither 'main', 'master', nor 'development' branch exists."
    return 1
  fi
}


alias gb="git branch --show-current 2>/dev/null | pbcopy"

# overloads
alias vim="nvim"
alias cat="bat"


# env variables
export EDITOR=nvim
export VISUAL=nvim

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/cfg.json)"
