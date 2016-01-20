#!/bin/bash

cd /Path/to/repo

gitstatus==`git status | grep "nothing to commit, working directory clean"`
clean="nothing to commit, working directory clean"

if [ $gitstatus == $clean ]; then
	exit
else
	git add .
	git commit -m "Automated note upload"
	git push origin master
fi
