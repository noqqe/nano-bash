# Drop in replacement for ls
# Not sure if i like it so far, but i think i give it a try

EXA=$(which exa 2>/dev/null)

if [[ -x $EXA ]]; then

  alias l='exa -lh --git -g --time-style long-iso'
  alias ls='exa'
  alias tree='exa -lh --git -g --time-style long-iso --tree'
  alias lr='exa -lh --git -g --time-style long-iso --tree'

fi
