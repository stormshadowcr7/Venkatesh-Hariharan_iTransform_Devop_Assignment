#!/bin/bash


#We are going to use nested functions to simulate the kind of abstraction 
#you find in many object oriented languages. Create the following
#structures in your script:

#A function that defines two local variables to hole the number of arms and#legs that a human being has.
#nested functions, one for each a male and female, that contain the 
#appropr#iate number of beards that each gender has.
#capture the gender as a command line parameter.
#test the command line parameter and call the appropriate functions in 
#order to display the characteristics of the indicated gender.


function gender(){
local arms=2
local legs=2
  if [[ $ans = female ]];then
           Female;
   else
          Male;
    fi
   }

  function Female()
          {
          echo "Females have $arms arms and $legs legs and dont have beards."
          }


  function Male()
          {
           echo "Males have $arms arms $legs legs and also have beards."
          }


echo "Enter Male or Female" 
read ans
gender $ans
