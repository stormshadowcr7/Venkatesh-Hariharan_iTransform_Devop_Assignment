#!/bin/bash 


#Write a script that runs three commands:
#Evaluate an arithmetic expression
#Attempt to remove a file that does not exist in the current directory
#Evaluate another arithmetic expression
#Immediately after each command, 
#echo the exit status of that command to the terminal using the appropriate variable to show success and failure exit codes.


echo "79+29 is:"
expr 79 + 29
echo $?

#Removing a file from different directory

rm /home/kali/Assignment2.sh

echo $? 

echo "42-39 is:"
expr 42 - 39
echo $?
