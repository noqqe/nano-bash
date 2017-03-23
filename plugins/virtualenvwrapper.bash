### Python virtualenv wrapper

VENV=$(which virtualenvwrapper.sh 2>/dev/null)

if [[ -x $VENV ]]; then
  export WORKON_HOME=~/.pyenvs
  export PROJECT_HOME=~/Code
  source $VENV
fi
