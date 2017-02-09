#!/bin/sh

mkdir ~/Desktop/$REPO
mkdir ~/Desktop/$REPO/css
mkdir ~/Desktop/$REPO/img
touch ~/Desktop/$REPO/css/styles.css
touch ~/Desktop/$REPO/index.html
cd ~/Desktop/$REPO
git init
git pair $NAME1 $NAME2
git add .
git-pair-commit -m "Create initial css folder, img folder, and index.html"
git remote add $NAME1 https://github.com/$GITHUB1/$REPO
git remote add $NAME2 https://github.com/$GITHUB2/$REPO
atom .
echo
git remote -v
echo
echo "All done!"
