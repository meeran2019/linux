#!/bin/bash

# The script:

# Is named "add-local-user.sh".

# Enforces that it be executed with superuser (root) privileges.  If the script is not executed with superuser privileges it will not attempt to create a user and returns an exit status of 1.

# Prompts the person who executed the script to enter the username (login), the name for person who will be using the account, and the initial password for the account.

# Creates a new user on the local system with the input provided by the user.

# Informs the user if the account was not able to be created for some reason.  If the account is not created, the script is to return an exit status of 1.

# Displays the username, password, and host where the account was created.  This way the help desk staff can copy the output of the script in order to easily deliver the information to the new account holder.

# After coming up with your list, you realize that you're not sure where to get the hostname information.  You decide to wait until you start writing your shell script to check the bash man page to see if there are any builtin commands or variables that could provide this information.

# You decide to develop your script on a Linux virtual machine running on your local operating system.  This way you can test the script's functionality before uploading it to the server where it will be used by the help desk staff.



# First it checks whether ROOT privileged accessed or not. If no root privilege, then throw error. 
if [[ ${UID} -ne 0 ]]
then 
  echo "User id is ${UID}, Only ROOT privilege can access"
  exit 1
else 
  echo "User id is ${UID}, Proceeding to create user account"
fi 


# Prompt user to enter the username, full name & password details.
read -p 'Enter the new user name: ' USER_NAME
read -p 'Enter the full name: ' FULL_NAME 
read -p 'Enter the password: ' PASS_WORD


# Create a new username.
useradd -c "${FULL_NAME}" ${USER_NAME} 
if [[ ${?} -eq 0 ]]
then 
    echo "Account ${USER_NAME} created successfully .."
else
    echo "Account ${USER_NAME} creation failed with error code ${?} .."
    exit ${?}
fi 

# NOTE: --stdin not available in ubuntu, so skipping password change for now. 

# To get hostname details. 
# $HOSTNAME is variable . so can use $HOSTNAME or $(hostname) to get. 
HOST_NAME=$(hostname)

# To display all values. 
echo "Value of user name is ${USER_NAME}"
echo "Value of host name is ${HOST_NAME}"
