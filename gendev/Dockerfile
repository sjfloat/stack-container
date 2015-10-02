
from debian:jessie

run apt-get update 
# combine these when the list stabilizes
run apt-get install -y ctags
run apt-get install -y curl
run apt-get install -y git
run apt-get install -y htop
run apt-get install -y make
run apt-get install -y man
run apt-get install -y tcsh
run apt-get install -y tmux
run apt-get install -y tree
run apt-get install -y vim
run apt-get install -y vim-doc
run apt-get install -y wget


# sudo, tree, htop

env DEVUSER steve
run adduser $DEVUSER
user $DEVUSER

ENV HOME /home/$DEVUSER
workdir $HOME

add vimrc $HOME/.vimrc
add vim $HOME/.vim
add tcshrc $HOME/.tcshrc
add cshrc $HOME/.cshrc
add exrc $HOME/.exrc
add inputrc $HOME/.inputrc
add tmux.conf $HOME/.tmux.conf

user root
run chown -R ${DEVUSER}: $HOME

user $DEVUSER

cmd /bin/bash
