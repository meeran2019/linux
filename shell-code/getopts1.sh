#!/bin/bash 

while getopts ltr OPTIONS
do 
echo "${OPTIONS}"
    if [[ $OPTIONS = 'l' ]]
    then 
        echo 'Length'
    elif [[ $OPTIONS = 't' ]]
    then 
        echo 'Time..'
    else 
        echo "invaid option.."
    fi 
done 


getopts ltr OPTIONS
echo "New value is $OPTIONS"
