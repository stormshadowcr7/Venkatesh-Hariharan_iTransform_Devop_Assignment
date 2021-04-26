#!/bin/bash

#Create a script that interacts with the user. 
#Prompt them to guess a secret number between 1 and 5. Read the guess from the terminal and assign it to a variable. 
#Using the 'if' statement from the course, test that value to determine 
#if they guessed the right number (you choose the correct value). 
#If they do, display a success message, otherwise do nothing.





mynum=4

read -p "Guess my number between 1 to 5:" gnum

if [[ $gnum == $mynum ]]
then
	echo "you guessed it ryt"

fi	

	
