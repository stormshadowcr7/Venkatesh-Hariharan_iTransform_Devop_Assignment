#!/bin/bash


#Develop a simple three item menu to display on the terminal. 
#Your script, upon display of the menu, should prompt the user to choose one of the three available options. 
#Using the 'case' statement from the course, display three unique messages depending on which number they chose, 
#with a catch all message letting them know if they went outside the bounds of instructions.


echo "This are the items in the menu, please select any one"

echo "1.Tomato Soup"
echo "2.Chicken Noodles"
echo "3.Mango Milkshake "

read -p "What would you like to have?" choice

case $choice in
	"1") echo "Your tomato soup would be right with you"
	 ;;
        "2") echo "Your Chicken soup would be right with you"
         ;;
	"3") echo "Your Mango milkshake would be right with you"
	 ;;
         *) echo "Please select from the menu"
 esac

