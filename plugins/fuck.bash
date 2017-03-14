# fuck corrections
FUCK=$(which fuck 2>/dev/null)

if [[ -x $FUCK ]]; then
  eval $(thefuck --alias)
  alias f=fuck
fi
