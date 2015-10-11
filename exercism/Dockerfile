
from haskell-dev:7.8.4

env DEBIAN_FRONTEND noninteractive

user root

workdir /tmp
run wget https://github.com/exercism/cli/releases/download/v2.2.1/exercism-linux-64bit.tgz
run tar xvf exercism-linux-64bit.tgz
run chmod +x exercism
run mv exercism /usr/local/bin/
run rm -rf /tmp/*

workdir $HOME
user $USER

run mkdir $HOME/exercism
workdir $HOME/exercism

add README.adoc $HOME/exercism/
