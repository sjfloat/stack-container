
from gendev

env DEBIAN_FRONTEND noninteractive

user root

#
# get stack
#
run wget -q -O- https://s3.amazonaws.com/download.fpcomplete.com/debian/fpco.key | apt-key add -
run echo 'deb http://download.fpcomplete.com/debian/jessie stable main'| tee /etc/apt/sources.list.d/fpco.list
run apt-get update && apt-get install stack -y
run apt-get clean
run rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

env USER steve

env HOME /home/$USER
add haskeline $HOME/.haskeline
run chown -R ${USER}: $HOME

user $USER
workdir $HOME
run stack new initial simple

workdir initial
run stack setup

# This could be less hacky...
run echo "setenv PATH `stack path | grep '^bin-path' | cut -f2- -d:`" >> ~/.cshrc

cmd /bin/tcsh
