#!/bin/bash

ArchFile=$1

echo "unarchive the tar file"
tar xvfz $ArchFile -C repos

echo "completed extracting files"
cd real-oscblog
echo "Ready to deploy"
#git remote set-head origin --auto
git add .
git commit -m "Deploy the new blog"
git push origin master
echo "Publishing Done, will delete the archive file"
rm -f ../$ArchFile
