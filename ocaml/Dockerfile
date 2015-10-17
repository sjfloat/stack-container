
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
    opam \
    m4

run apt-get clean

env USER steve
env HOME /home/$USER

user $USER
workdir $HOME
run opam init -y > opam-init.out 2>&1

run opam install -y core
run opam install -y merlin
add vim.patch /tmp/vim.patch
run patch ~/.vimrc /tmp/vim.patch
user root
run rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
user $USER

run opam config env >> ~/.cshrc

cmd /bin/tcsh
