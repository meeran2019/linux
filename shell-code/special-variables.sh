#!/bin/bash

echo $UID 
NAME=$(id -un)
echo $NAME 

LIST=`ls -ltr`
echo $LIST

if [[ $UID == 0 ]];
then
  echo "$UID is zero";
else
  echo "$UID is not zero";
fi 

# NOTE: It can be create with or without ; . If require in single line, then require ; 
# if [[ $UID == 0 ]]
# then
#   echo "$UID is zero"
# else
#   echo "$UID is not zero"
# fi 