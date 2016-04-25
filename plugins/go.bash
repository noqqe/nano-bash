gopath=$(which go)
gohome=$HOME/.go/ # thats so nice. go home. thihihi.

if [[ -x $gopath ]]; then
  if [[ ! -d $gohome ]]; then
    mkdir $gohome
  fi
  export GOPATH=$gohome
  export PATH=$PATH:$gohome/bin/
fi

