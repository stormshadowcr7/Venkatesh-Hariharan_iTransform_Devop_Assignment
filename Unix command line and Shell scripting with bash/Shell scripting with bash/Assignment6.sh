#!/bin/bash


#Write a script that evaluates and displays the following arithmetic operations:
#Add two numbers
#Add two numbers and multiply by a third, do not group anything 
#Add two numbers, grouped (changing order of precedence) and multiply by a third
#Keep in mind special characters and/or escape characters as needed.


first=1
second=2
third=3


#Add two numbers
sum=$(($first + $second))
echo "Sum of first two numbers is" $sum


#Add two numbers and multiply by a third

Multiple=$(($sum * $third))
echo "Sum of 2 numbers and multiplying it by the third ans is" $Multiple
 
grp= expr $first + $second \* $third
echo $grp
