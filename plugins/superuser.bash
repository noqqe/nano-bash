# A convinient way to get superuser on different systems for
# me by just typing "s". As im using OpenBSD (doas) this needs to
# be a plugin.

DOAS=$(which doas 2>/dev/null)
SUDO=$(which sudo 2>/dev/null)

if [[ ! -z $SUDO ]]; then
  alias s="sudo -Es"
fi

if [[ ! -z $DOAS ]]; then
  alias s="doas -s"
fi

