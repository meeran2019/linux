#!/bin/bash 

# while getopts 'lt:r:' OPTIONS
# do 
# echo "${OPTIONS}"
#     if [[ $OPTIONS = 'l' ]]
#     then 
#         echo 'Length..'
#         echo ${OPTARG}
#     elif [[ $OPTIONS = 't' ]]
#     then 
#         echo 'Time..'
#         echo ${OPTARG}
#     else 
#         echo "Reverse.."
#         echo ${OPTARG}
#     fi 
# done 

while getopts 'l:t:r:' OPTIONS
do 
echo $OPTIND 
echo "${OPTIONS}"
    case $OPTIONS in 
    l)
        echo 'Length..'
        echo ${OPTARG}
    ;;
    t) 
        echo 'Time..'
        echo ${OPTARG}
    ;;
    r)
        echo "Reverse.."
        echo ${OPTARG}
    ;;
    esac 
done 

