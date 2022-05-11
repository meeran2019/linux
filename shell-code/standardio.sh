#!/bin/bash 

# standard output, it override the file. 
echo "Hello World!" > hello     
cat hello 
echo
echo "Overridden file" > hello 
cat hello 
echo 

# standard output, it append the file. 
echo "append the data" >> hello 
cat hello 
echo 

#standard input, read the data from keyboard, pipe or files. 
# read used to read a single line from a line. 
read LINE < hello
echo "value of LINE is ${LINE}"
echo 

#standard output in file descriptor.
echo "file descriptor 2" 1> hello
cat hello 
echo 

#standard error in file descriptor.
# cat /dev/test 2> hello.err 
# cat hello.err 

# # capture both STSIN & STDERR in same file 
# head -n1 exit-sta.sh hello > hello.both 2>&1 

# # capture both STSIN & STDERR in same file 
# head -n1 exit-sta.sh hello > hello.both 2>&1 

# capture both STSIN & STDERR in different file 
head -n1 exit-stat.sh hello 1> hello.out 2> hello.err 



