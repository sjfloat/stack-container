
from debian:jessie

run apt-get update 
# combine these when the list stabilizes
run apt-get install -y ctags
run apt-get install -y curl
run apt-get install -y git
run apt-get install -y htop
run apt-get install -y man
run apt-get install -y tcsh
run apt-get install -y tmux
run apt-get install -y tree
run apt-get install -y vim
run apt-get install -y vim-doc


# sudo, tree, htop

env DEVUSER steve
run adduser $DEVUSER
user $DEVUSER

workdir /home/$DEVUSER

cmd /bin/bash
