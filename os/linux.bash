
### DirColors
# enable nice dircolors from https://github.com/seebi/dircolors-solarized
if [ "$OS" != "OpenBSD" ] && [ "$OS" != "Darwin" ]; then
    if [ -x $(which dircolors) ] ; then
        eval `dircolors $NANOBASH/configs/dircolors-solarized`
    fi
fi

# Special case for oBSD
if [ $OS != "OpenBSD" ] && [ $OS != "Darwin" ]; then
	alias ls='ls -G'

    # Enable colors with environment is ok with it
    case "$-" in
        *i* ) alias ls="ls --color" ;;
    esac
fi
