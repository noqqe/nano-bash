
### PROMPT
# Made a litte rip off from bash-it framework.
# Prompt will automatically get branch name when in
# a repository

function parse_git_dirty {
  if [[ -n $(git status -s 2> /dev/null |grep -v ^# | grep -v "working directory clean" ) ]]; then
      echo -e "$GIT_DIRTY"
  else
    echo -e "$GIT_CLEAN"
  fi
}

# Make branch and dirty status in prompt
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo -e " (${ref#refs/heads/}$(parse_git_dirty))"
}

# For longer commands this is useful sometimes
miniprompt() {
        PS1='$ '
}

# Finally make prompt
#PROMPT='\u@\h:\w$(git_prompt_info)$ '
PROMPT='\A \[\e[1;37m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[34m\]\w\[\e[0m\]\[\e[0m\]$(git_prompt_info) \$\[\e[0m\] '
PS1="${PROMPT}"
