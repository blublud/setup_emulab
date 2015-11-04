#!/bin/bash

#Load credentials into vars
script_dir=$(dirname $0)
bash $script_dir/setup_git.sh.private

git config --global user.name $GIT_USRNAME
git config --global user.email $GIT_EMAIL
git config --global color.ui auto

eval `ssh-agent -s`
ssh-add $GIT_PRIVATEKEY
