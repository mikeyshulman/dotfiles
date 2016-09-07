#!/bin/bash

cp -R /app/user_data/.ssh ~
cp -R /app/user_data/dotfiles ~
cd ~/dotfiles
git log
