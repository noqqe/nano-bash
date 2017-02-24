# Prompt

### Git Prompt

GIT_DIRTY='*'
GIT_CLEAN=''
GIT=$(which git 2>/dev/null)

function parse_git_dirty {
  if $GIT diff-index --quiet HEAD; then
    echo -e "$GIT_CLEAN"
  else
    echo -e "$GIT_DIRTY"
  fi
}

# Make branch and dirty status in prompt
function git_prompt_info {
  ref=$($GIT symbolic-ref HEAD 2> /dev/null) || return
  echo -e " (${ref#refs/heads/}$(parse_git_dirty))"
}

# Prompt colors and configuration
PROMPT='\A \[\e[1;37m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[34m\]\w\[\e[0m\]\[\e[0m\]$(git_prompt_info) \$\[\e[0m\] '
PS1="${PROMPT}"

# For longer commands this is useful sometimes
miniprompt() {
  PS1='$ '
}
