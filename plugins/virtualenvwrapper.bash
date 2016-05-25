### Python virtualenv wrapper

if [[ -x /usr/local/bin/virtualenvwrapper.sh ]]; then
  export WORKON_HOME=~/.pyenvs
  export PROJECT_HOME=~/Code
  source /usr/local/bin/virtualenvwrapper.sh
fi
