#!/bin/tcsh

#Load credentials into vars
set script_dir=`dirname $0`

source $script_dir/setup_git.sh.private

echo "set git username to: $GIT_USRNAME"
git config --global user.name $GIT_USRNAME
echo "set git email to: $GIT_EMAIL"
git config --global user.email $GIT_EMAIL
git config --global color.ui auto

eval `ssh-agent -c`
ssh-add $GIT_PRIVATEKEY
