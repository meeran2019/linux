#!/bin/bash 

# Display the UID.
echo "UID is $UID"

# Only display if UID does not match 1000.
# Condition can be -ne or != 
# exit 0 or exit 1.
if [[ $UID != 2000 ]]
then 
  echo "UID is if $UID"
fi 

# Display the username. 
USERNAME=$(id -un)
echo "${USERNAME}"

# Test if command succeeded.
if [[ $? -eq 0 ]]
then
  echo "Last command is successful"
fi 
