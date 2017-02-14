
### DirColors
if [ -x $(which dircolors) ] ; then
    eval `dircolors $NANOBASH/configs/dircolors-solarized`
fi

# Enable colors with environment is ok with it
# does not apply to non-interactive sessions
case "$-" in
    *i* ) alias ls="ls --color" ;;
esac

# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
