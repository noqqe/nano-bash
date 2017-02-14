
# Useful Functions

# remove missing
function git_remove_missing_files {
  git ls-files -d -z | xargs -0 git update-index --remove
}

# easy committing
function gcm {
  git commit -a -m "$*"
}

# git
alias g='git'

# Adding
alias ga='git add'
alias gall='git add .'

# semi intelligent pushing
function gp {
  if [[ ! -z $1 ]]; then
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
  else
    BRANCH=$1
  fi
  git push origin $BRANCH
}

# Status
alias gs='git status'
alias gl='git log --oneline'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias cdiff='git diff --cached'
