#!/bin/bash

#We need to create a menu for our users. Display a menu containing three choices AND a choice to allow them to exit. 
#Display that menu and prompt for a choice. Upon choosing the value, it should simply clear the screen and redisplay the menu (loop until the exit choice is given).

#HOWEVER, we need to be sure that the end user cannot use CTL-C, CTL-Z or a KILL command to terminate the application. 
#Add a 'trap' in the script to capture those attempts and provide instructions on how to exit the script using the menu choice instead.


ctrlc_count=0

function no_ctrlc()
{
    let ctrlc_count++
    echo
    if [[ $ctrlc_count == 1 ]]; then
        echo "Stop that."
    elif [[ $ctrlc_count == 2 ]]; then
        echo "Once more and I quit."
    else
        echo "That's it.  I quit."
        exit
    fi
}

PS3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")

select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "First option was selected"
            ;;
        "Option 2")
            echo "Second option was selected"
            ;;
        "Option 3")
            echo "Third option was selected"
            ;;
        "Quit")
             break
                        ;;
        *) 
            trap no_ctrlc SIGINT

            while true
            do
                echo Sleeping
                sleep 10
            done
        echo "invalid option $REPLY";;
        
    esac

done
