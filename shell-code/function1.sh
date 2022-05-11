#!/bin/bash 

# declaring the function. 
log_func()
{
    local argument_value=${1}
    echo "Argument value is ${argument_value}"
    echo "Value of log .."
    echo "value of argument 1 is ${1}"
    echo "value of argument 2 is ${2}"
    logger -t function1.sh "logging test"
    return 0 
}

# calling the function.
log_func $1 $2      # THis $1 $2 comes from CLI input and passed as arguments to function.


