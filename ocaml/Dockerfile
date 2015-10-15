
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
run rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

env USER steve
env HOME /home/$USER

user $USER
workdir $HOME
run opam init -y > opam-init.out 2>&1

run opam install -y merlin

#run chown -R ${USER}: $HOME

cmd /bin/tcsh