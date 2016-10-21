#!/bin/bash
cp -R /app/user_data/.secrets.sh ~
cp -R /app/user_data/.ssh ~
cp -R /app/user_data/dotfiles ~
cp -R /app/user_data/.vim ~
cd ~/dotfiles
./setup.sh
source ~/.zshrc
