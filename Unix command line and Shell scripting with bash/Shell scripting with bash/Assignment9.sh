#!/bin/bash

#Write a script intended to iterate through an array called SERVERLIST containing at least four values (server names).
#Display all four values to the terminal when run.

SERVERLIST=(server1 server2 server3 server4 server5)

echo ${SERVERLIST[0]}
echo ${SERVERLIST[1]}
echo ${SERVERLIST[2]}
echo ${SERVERLIST[3]}
echo ${SERVERLIST[4]}
