#!/bin/bash 

if [[ ${1} = 'start' ]]
then 
    echo 'Starting..'
elif [[ ${1} = 'stop' ]]    
then 
    echo 'stopping..'
else 
    echo 'enter valid arguments..'
fi     

case ${1} in 
    start) 
        echo 'staring..'
    ;; 
    stop | stopping) 
        echo 'stopping..'
    ;; 
    *) 
        echo 'enter valid arguments..'
    ;;
esac 

    