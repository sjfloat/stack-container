
from debian:jessie

run apt-get update && apt-get install wget -y
run wget -q -O- https://s3.amazonaws.com/download.fpcomplete.com/debian/fpco.key | apt-key add -
run echo 'deb http://download.fpcomplete.com/debian/jessie stable main'| tee /etc/apt/sources.list.d/fpco.list
run apt-get update && apt-get install stack -y

run groupadd stackuser && useradd -g stackuser stackuser
user stackuser

cmd /bin/bash
