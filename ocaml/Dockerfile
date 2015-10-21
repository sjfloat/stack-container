
from gen-dev

env DEBIAN_FRONTEND noninteractive

user root

run apt-get update && apt-get install -y \
    ocaml-compiler-libs \
    ocaml-interp \
    ocaml-base-nox \
    ocaml-base \
    ocaml \
    ocaml-nox \
    ocaml-native-compilers \
    camlp4 \
    camlp4-extra \
    m4 \
    unzip 

run apt-get clean

env HOME /home/$USER

workdir $HOME
add https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh $HOME/opam_installer.sh
run /bin/sh $HOME/opam_installer.sh /usr/bin > opam_installer.out 2>&1

user $USER
run opam init -y > opam-init.out 2>&1
run opam install -y \
    core \
    merlin \
    utop

add vim.patch /tmp/vim.patch
run patch ~/.vimrc /tmp/vim.patch
run ln -s $HOME/.opam/opam-init/init.csh $HOME/.cshrc.d/
run ln -s $HOME/.opam/opam-init/init.sh  $HOME/.profile.d/

user root
run rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

user $USER

cmd $SHELL
