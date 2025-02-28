#!/bin/bash

echo "Shell: $SHELL"
echo "User: $USER"
echo "Directory: $PWD"
echo "Git User: $(git config user.name)"
echo "Git mail: $(git config user.email)"
echo

if [[ $1 == "-h" || $1 == "--help" ]]; then
	echo "./autocommit.sh <argument 1>"
	echo "-d	--diff		git diff"
	echo "-l	--log		git log --oneline"
	echo "-h	--help		Help"; echo;
	exit 0
fi

echo "$(git status)"; echo;

if [[ $1 == "-d" || $1 == "--diff" ]]; then
	echo "$(git diff)"; echo;
	exit 0
elif [[ $1 == "-l" || $1 == "--log" ]]; then
	echo "$(git log --oneline)"; echo;
	exit 0
fi

if [[ $(git status) != "On branch main Your branch is up to date with 'origin/main'. nothing to commit, working tree clean" ]]; then
	git add .
	echo "Enter commit:"; read desc1;
	echo "Enter Description:"; read desc2;
	echo "$(git commit -m $disc1 -m $disc2)"; echo;
	echo "$(git push)"; echo;
fi