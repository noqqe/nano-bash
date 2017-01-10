NVIM=$(which nvim 2>/dev/null)

if [[ -x $NVIM ]]; then

  alias vim=$NVIM
  export EDITOR=$NVIM

  if [[ ! -d ~/.config ]]; then
    mkdir ~/.config
  fi

  if [[ ! -L ~/.config/nvim ]]; then
    ln -s ~/.vim ~/.config/nvim
  fi

  if [[ ! -L ~/.config/nvim/init.vim ]]; then
    ln -s ~/.vimrc ~/.config/nvim/init.vim
  fi

fi
