#!/bin/bash


#Create a script that interacts with the user. You will want to prompt the user to enter the following information (which you will capture and place into the following variables):

#FIRSTNAME
#LASTNAME
#USERAGE
#Greet the user with their name and current age displayed and then calculate and display their age in 10 years.



read -p "Yourname?:" name
read -p "Lastname?:" lname
read -p "AGE?:" age



echo "Greetings $name $lname" 

fage=$(($age+10))
echo "your age in 10 years would be" $fage
