#!/bin/bash

#Create a simple text file at the command prompt. This file should contain #three values - CPU, Memory and Disk space for an imaginary system, all on #one line and delimited with a '|' character.

#Write a script to read that file and prompt the user for the delimiter 
#value. Use that delimiter along with the IFS variable and read those 
#delimited values into three appropriately named variables. 
#Finally, display them with labels, one each per line.

read -p "Enter Filename: " filename

if [[ -f "$filename" ]]
then 
    while IFS= read -r line
    do
	echo "$line"
    done < $filename
else
    echo "$filename doesnt exist"
fi    


