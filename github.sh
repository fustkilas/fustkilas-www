#!/bin/bash
hugo
cd public
git add -A
msg="Site Rebuild `date`"
if [ $# -eq 1 ]
then msg="$1"
fi
git commit -m "$msg"

git push origin master
cd ..
