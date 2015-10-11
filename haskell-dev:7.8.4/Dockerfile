
from gen-dev

env DEBIAN_FRONTEND noninteractive

user root

#
# get stack
#
run wget -q -O- https://s3.amazonaws.com/download.fpcomplete.com/debian/fpco.key | apt-key add -
run echo 'deb http://download.fpcomplete.com/debian/jessie stable main'| tee /etc/apt/sources.list.d/fpco.list
run apt-get update && apt-get install -y \
    stack \
    libtinfo-dev
run apt-get clean
run rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

env USER steve

env HOME /home/$USER
add stack.yaml $HOME/.stack/global/stack.yaml
add haskeline $HOME/.haskeline
run chown -R ${USER}: $HOME

user $USER
workdir $HOME
run stack setup
run stack install cabal-install

# This could be less hacky...
run echo "setenv PATH $HOME/.local/bin:`stack path | grep '^bin-path' | cut -f2- -d' '`" >> ~/.cshrc

run tcsh -c "cabal update"
run tcsh -c "cabal install HUnit"

cmd /bin/tcsh
