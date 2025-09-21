#!/bin/bash
# Variable assignment
NAME="Shayash Jena"
COUNT=10
TODAY=$(date)    #This uses command substitution.

# Using variable
echo "Hello, $NAME" #Double quotes allow varialbe expension.
echo 'Hello, $NAME' #Single quotes prevent expension - will print literally: Hello, $NAME

#You can also use curly braces for clarity and to avoid ambiguilty.
echo "Hello, ${NAME}!"
echo "There are ${COUNT}files."  #Without braces. It will look for a variable $COUNTfiles
echo "There are ${COUNT} files."  #This works correctly.
