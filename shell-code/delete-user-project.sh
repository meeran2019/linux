#!/bin/bash 

if [[ ${UID} -ne 0 ]]
then 
    echo "Run as root user or sudo.."
    exit 1 
fi 



while getopts 'dra:' options
do     
    case ${options} in 
    d)  echo "To delete "
        echo ${OPTARG}
    ;;
    r)  echo "Removes home directory"
        echo ${OPTARG}
    ;;
    a)  echo "archive the file"
        echo ${OPTARG}
    ;;
    esac         
done 

echo ${@}
echo ${1}
echo ${2}
echo ${3}
echo ${04}
echo "First ${OPTIND}"
echo "First ${OPTARG}"
shift "$(( OPTIND - 1 ))"
echo "Second ${OPTIND}"
echo "Second ${OPTARG}"
echo "${@}"
echo ${1}
echo ${2}
echo ${3}
echo ${04}
shift $(( OPTIND - 1 ))
echo "Third ${OPTIND}"
echo "Third ${OPTARG}"
echo "${@}"
echo ${@}
echo ${1}
echo ${2}
echo ${3}
echo ${04}
