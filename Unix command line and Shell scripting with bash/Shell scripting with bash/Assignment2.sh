#!/bin/bash

#Write a script that sets FOUR variables:

#MYUSERNAME
#MYPASSWORD
#STARTOFSCRIPT
#ENDOFSCRIPT

#Populate the first two with some default value and use command redirection to set the third and 
#fourth value to the date/time of when the script was started and completed. 
#Within the script, be sure to display the values to the terminal when run.



MYUSERNAME=VENKATESH
MYPASSWORD=12345
STARTOFSCRIPT=$(date)
ENDOFSCRIPT=$(date)


echo  "username:" $MYUSERNAME
echo "password:" $MYPASSWORD
echo "start-time:" $STARTOFSCRIPT
echo "end-time:" $ENDOFSCRIPT
