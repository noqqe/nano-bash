### History - made right.

# history length
HISTSIZE=10000
HISTFILESIZE=10000

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# setting up timestamp for history
HISTTIMEFORMAT="%F %T "

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, save and reload history
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

