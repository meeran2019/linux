#!/bin/bash

# To prompt to get the username. 
read -p 'Enter the user name ' USERNAME 

#To prompt to get the password.
read -p 'Enter the password ' PASSWORD1

# To add the user 
useradd ${USERNAME}

# To change the password. 
# NOTE: Here prompt for password 2 times, so cant interact directly. Instead pass the value as --stdin to the passwd thorugh piping. But this option is not enabled in ubuntu. 
#echo "${PASSWORD1}" | passwd --stdin ${USERNAME}

passwd ${USERNAME}      # Note: with this, it will prompt user to type new password manually. 







