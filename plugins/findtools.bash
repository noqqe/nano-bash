# Contains some helpers for find and ag
F=$(which find)

# I know this is silly, but there is no default path in
# BSD and OSX
function find () {
  if [[ $# -eq 0 ]]; then
    $F .
  else
    $F "$@"
  fi
}

# Easily fuzzy search for a filename
function qfind () {
  $F . -iname "*$@*"
}

function agvim () {
  local files=$(ag -l "$@")
  $EDITOR $files
}


