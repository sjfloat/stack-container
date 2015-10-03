
from debian:jessie

env DEBIAN_FRONTEND noninteractive

run apt-get update 
# combine these when the list stabilizes
run apt-get install -y ctags
run apt-get install -y curl
run apt-get install -y git
run apt-get install -y htop
run apt-get install -y make
run apt-get install -y man
run apt-get install -y sudo
run apt-get install -y tcsh
run apt-get install -y tmux
run apt-get install -y tree
run apt-get install -y vim
run apt-get install -y vim-doc
run apt-get install -y wget

env USER steve
run adduser $USER
user $USER

env HOME /home/$USER
workdir $HOME

add vimrc $HOME/.vimrc
add vim $HOME/.vim
add tcshrc $HOME/.tcshrc
add cshrc $HOME/.cshrc
add exrc $HOME/.exrc
add inputrc $HOME/.inputrc
add tmux.conf $HOME/.tmux.conf

env SHELL /bin/tcsh

user root
run chown -R ${USER}: $HOME
run chsh -s $SHELL $USER

run echo "$USER  ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER

user $USER

cmd $SHELL
