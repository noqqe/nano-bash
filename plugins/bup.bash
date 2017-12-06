# backups files and dirs with timestamp

function bup () {
  if [[ -f $1 ]] || [[ -d $1 ]]; then
    cp -a $1 ${1}-$(date +%F-%H-%M-%S)
  fi
}
