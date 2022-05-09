#!/bin/bash

SCRIPT_PATH=${0}
LAST_CODE=${?}
PARAM_PASSED=${#}

echo "Script path is ${SCRIPT_PATH}"
echo "Last successful execution code is ${?}"
echo "No of parameter passed is ${#}"

echo "Base name is $(basename ${0})"
echo "Directory name is $(dirname ${0})"

for USER_NAME in "${@}"
do 
    PASSWORD_GEN=$(date +%s | sha256sum | head -c 20)
    echo "User name is ${USER_NAME} and password is ${PASSWORD_GEN}"
done
