#!/bin/bash 
git config --get remote.origin.url
#git branch -a
#git branch
git add .
eval "$(ssh-agent -s)"
ssh-add -l

#timestamp=$(date +"%D %T")
#starttime=$(date +%Y-%m-%d\ %H:%M:%S)
#=前后不能有空格
ttime=`date +"%Y-%m-%d %H:%M:%S"`
  ts=`date +"%Y-%m-%d %H:%M:%S"`
git commit -m "Changes to be committed:Update time: $ts"
echo $(date +%Y-%m-%d\ %H:%M:%S)
#echo `date +"%Y-%m-%d %H:%M:%S"`
git push -u origin master

