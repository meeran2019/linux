#!/bin/bash

# Pound symbol is used to comment.

# To display. 
echo "Hello World !"

# Assign a variable. 
WORD='apple'

# Display a variable. 
echo $WORD
echo "value of fruit is ${WORD}"

# Display a echo variable with ' quotes.' NOTE: single quote wont expand variables. 
echo 'value of fruit is $WORD'

# Incase append the variable to other values, then must use ${variable}. 
echo "${WORD}ing is a fruit"

# Create a new variable.
ENDED='ing'

# Combine two variable.
echo "Value of ${WORD}${ENDED}"

# Reassigning the variable ENDED.
ENDED='ed'
echo "Value of ${WORD}${ENDED}"


