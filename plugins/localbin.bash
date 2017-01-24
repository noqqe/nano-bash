# add local user dir as bin to PATH

USERBIN="$HOME/.bin"
if [[ -d $USERBIN ]]; then
  export PATH="${USERBIN}:${PATH}"
fi
