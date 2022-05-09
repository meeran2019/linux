#!/bin/bash 

# Make sure the script is being executed with superuser privileges.
# If the user doesn't supply at least one argument, then give them help.

if [[ ${UID} -ne 0 ]]
then
    echo "Only root user can create user accounts"
    exit 1
elif [[ ${#} -eq 0 ]]
then 
    echo "Please enter the 2 arguments, 1st for user-name and 2nd for comments"
    exit 1 
fi 

USER_NAME=$1
USER_COMMENT=$2
# shift 
# USER_COMMENT=${@/*} , so multiple arguments take as 2nd argument.
USER_PASS=$(date +%s | sha256sum | head -c20)

echo "User name is ${USER_NAME}"
echo "User comment is ${USER_COMMENT}"
echo "User password is ${USER_PASS}"

useradd ${USER_NAME}
if [[ ${?} -eq 0 ]]
then 
    echo "User account is created successfully .."
else 
    echo "User account failed with error ${?}"
    exit 1 
fi

echo "User name is ${USER_NAME}"
echo "User comment is ${USER_COMMENT}"
echo "User password is ${USER_PASS}"
echo "Host is ${HOSTNAME}"


