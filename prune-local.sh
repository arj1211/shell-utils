#!/bin/bash
git fetch --prune
git branch | grep -v "*" > local.txt
git branch -r | sed 's/origin\///g' > remote.txt
cat local.txt | grep -v -f remote.txt | xargs git branch -d
rm local.txt remote.txt
