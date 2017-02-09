#!/bin/sh

echo "This script is for Into to Programming at Epicodus. It will save you some typing and copy/pasting."
echo "First, it will ask you for your github repo name for the new project. Both users MUST name their repo identically. After that, each person will enter their initials and then their github usernames (NOT THEIR EMAILS). The script will then create the project folder and index.hml, then nested css and img folders, and styles.css inside the css folder. It will then initialize git inside the project folder, git pair the users, git add ., and write an initial commit."
echo "IF YOU MISSPELL ANYTHING, QUIT IMMEDIATELY AND START OVER"
echo
echo "Now, enter the prject name (ex: my-first-website):"
read repoName
echo "I got $repoName"
echo "First person, take the keyboard!"
echo
echo "First person: enter your initials and press [ENTER]: "
read pOneName
echo "I got $pOneName"
echo "Enter your github username and press [ENTER]: "
read pOneGitHub
echo "I got $pOneGitHub"
echo
echo "Second person, take the keyboard!"
echo
echo "Second person: enter your initials and press [ENTER]: "
read pTwoName
echo "I got $pTwoName"
echo "Enter your github username and press [ENTER]: "
read pTwoGitHub
echo "I got $pTwoGitHub"
echo
echo "Confirming your github repo you already added is $repoName?"
echo "Person one's initials are $pOneName and their github username is $pOneGitHub ?"
echo "And person two is $pTwoName and their github username is $pTwoGitHub?"
echo "Type Y for yes, N for no: "
read -n 1 confirmVariables

if [ "$confirmVariables" = "n" -o "N" ]; then
    echo
    echo "EXITING, TRY AGAIN"
    exit
else
    echo "Running script!"
fi

REPO=$repoName
NAME1=$pOneName
GITHUB1=$pOneGitHub
NAME2=$pTwoName
GITHUB2=$pTwoGitHub

export REPO
export NAME1
export GITHUB1
export NAME2
export GITHUB2

./gitAndRepoTool.sh
