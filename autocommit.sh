#!/usr/bin/bash

cd $(dirname $(realpath $0))

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
	echo "-h	--help		Help"
	exit 0
fi

echo "$(git status)"; echo;

if [[ $1 == "-d" || $1 == "--diff" ]]; then
	echo "$(git diff)"
	exit 0
elif [[ $1 == "-l" || $1 == "--log" ]]; then
	echo "$(git log --oneline)"
	exit 0
fi

if [[ 1 ]]; then
	echo "Enter commit:"; read desc1;
	echo "Enter Description:"; read desc2;
	git add .
	echo "$(git commit -m '$disc1' -m '$disc2')"; echo;
	echo "$(git push)"
else
	exit 0
fi