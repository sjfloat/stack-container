
from gendev

env DEBIAN_FRONTEND noninteractive

user root

#
# get stack
#
run wget -q -O- https://s3.amazonaws.com/download.fpcomplete.com/debian/fpco.key | apt-key add -
run echo 'deb http://download.fpcomplete.com/debian/jessie stable main'| tee /etc/apt/sources.list.d/fpco.list
run apt-get update && apt-get install stack -y

env USER steve

env HOME /home/$USER
add haskeline $HOME/.haskeline
run chown -R ${USER}: $HOME

user $USER
workdir $HOME
run stack new initial simple

workdir initial
run stack setup

cmd /bin/tcsh
