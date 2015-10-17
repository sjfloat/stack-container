
from ocaml

env DEBIAN_FRONTEND noninteractive

user root

run apt-get update && apt-get install -y \
    libssl-dev \
    pkg-config

user $USER
run opam install mirage -y -v > opam-install-mirage.out 2>&1

add README.adoc $HOME/README.adoc
