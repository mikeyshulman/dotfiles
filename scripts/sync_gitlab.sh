#!/bin/zsh
git checkout glab-master
git pull glab
git checkout master
git merge glab-master
git push

