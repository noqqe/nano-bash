
### DirColors
if [ -x $(which dircolors) ] ; then
    eval `dircolors $NANOBASH/configs/dircolors-solarized`
fi

# Enable colors with environment is ok with it
# does not apply to non-interactive sessions
case "$-" in
    *i* ) alias ls="ls --color" ;;
esac
