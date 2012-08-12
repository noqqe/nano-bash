# nano-bash

nano-bash is my solution to distribute my bashrc to my clients and servers and 
be version-control save. 

# Installation

Download

    $ git clone https://github.com/noqqe/nano-bash $HOME/.nano-bash

copy this to your .bashrc:

    NANOBASHCONF="$HOME/.nano-bash/bash.conf"
    if [ -r $NANOBASHCONF ]; then
       source $NANOBASHCONF
    else
       echo "WARN: Could not find nano-bash config $NANOBASHCONF"
    fi

and start a new bash.

    $ bash
