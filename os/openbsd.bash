# put special cases for OpenBSD here
export PKG_PATH="http://ftp.fau.de/pub/OpenBSD/$(uname -r)/packages/$(uname -m)/"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"

function pkg_find {

  local index=/tmp/.pkgs.index.html

  # check params
  if [ $# -eq 0 ]; then
    echo "Try looking for a package.. idiot."
    exit 1
  fi

  # check path
  if [ "x" == "x$PKG_PATH" ]; then
    echo "No PKG_PATH defined. Exiting..."
    exit 1
  fi

  # create index if neccessary
  if [ ! -r $index ]; then
    echo "No index file found. Updating..."
    ftp -o $index -VM $PKG_PATH
  fi

  if test "$(find $index -mtime +2)"; then
    echo "Index file too old. Updating..."
    ftp -o $index -VM $PKG_PATH
  fi

  for x in $@ ; do
    echo -e "\033[32mPackages matching your query: $x\033[0m"
    grep -i $x $index | awk -F\" '{print $6}' | sed 's/.tgz$//g'
  done

}
