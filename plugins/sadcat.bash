
SADCAT=$(which sadcat)

if [[ -x $SADCAT ]]; then
  if [[ -r "${HOME}/.ssh/sadcat.toml" ]]; then

    # set refresh alias
    alias sshre="$SADCAT $HOME/.ssh/sadcat.toml > $HOME/.ssh/config"

    # set edit alias
    alias sshedit="$EDITOR $HOME/.ssh/sadcat.toml"

  fi
fi
