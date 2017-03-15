
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

# adding
alias ga='git add'
alias gall='git add .'

# semi intelligent pushing
function gp {
  if [[ -z $1 ]]; then
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
  else
    BRANCH=$1
  fi
  git push origin $BRANCH
}

# shortcut for rebase pull
function gpur {
  if [[ -z $1 ]]; then
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
  else
    BRANCH=$1
  fi
  git pull --rebase origin $BRANCH
}

# update branch from remote
function gub {
  if [[ -z $1 ]]; then
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
  else
    BRANCH=$1
  fi

  if [[ ! -z $1 ]]; then
    git checkout $BRANCH
  fi

	git branch -u origin/$BRANCH $BRANCH && \
  git pull origin $BRANCH --ff-only

  # switch back to branch where I came from
  if [[ ! -z $1 ]]; then
	  git checkout -
  fi
}

# status
alias gs='git status'
alias gl='git log --oneline --decorate'
alias gll='git log --graph --pretty=oneline --abbrev-commit --decorate'
alias cdiff='git diff --cached'
