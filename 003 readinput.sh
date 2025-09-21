#!/bin/bash

#basic read - stores input in the REPLY variable.
echo "what is your name?"
read
echo "Hello, $REPLY"

#Read into a specific variable.
echo "What is your favorite color?"
read COLOR
echo "You said your favourite color is $COLOR"

#Read with a prompt on the same line (-p)
read -p "Enter your username: " USERNAME

#Slient read for passwords (-s)
read -s -p "Enter your password: " PASSWORD
echo  #Print the newline after the silent input


#Read multiple inputs
echo "Enter your full name (first last):"
read FIRST LAST
echo "First name: $FIRST"
echo "Second name:  $LAST"
