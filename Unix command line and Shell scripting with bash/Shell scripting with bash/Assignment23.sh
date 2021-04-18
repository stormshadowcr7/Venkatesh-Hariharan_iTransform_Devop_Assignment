#!/bin/bash



#Write a script that takes a single command line parameter intended to be 
#the user's first name. Prompt the user for their age and read that into a #variable. Using the appropriate method to make that command line parameter#visible to a function, pass the age captured to the function and display a#message to the user addressing them by name and confirming their age, 
#add a calculation of their age in number of days.

#!/user/bin/bash
echo "Your name?: "
read first_name

echo "Your age?: "
read age

function  info(){
  echo "User first name is $first_name"
  echo "User age is $age"
  local leap_yr=$(($age/4))
  local result=$((($leap_yr * 366) + (($age - $leap_yr) * 365)))
   echo "Age in no.of days: $result"
  }
 info first_name age
