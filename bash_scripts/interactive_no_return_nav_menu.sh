#!/bin/bash

#This program should be sourced

echo " Welcome! Where do you wanna go?
******************************"
echo "      1. HOME
      2. SETTINGS
      3. EXIT
 *Enter the corresponding number:"
read choice_1


case $choice_1 in
    1) cd $HOME
       pwd
       ls -l;;
    2) echo "      Where to now?
******************************
      1. Date and time
      2. Hardware Info
      3. Memory Management
      4. Live Processes
      5. Exit

Enter the corresponding number:"
      read choice_2
      case $choice_2 in
	  1) date;;
	  2) less /proc/cpuinfo;;
	  3) cat /proc/meminfo;;
	  4) top;;
	  5) echo "Bye, bye";;
	  *) echo "Invalid input";;
      esac;;
    3) echo "Bye, bye";;
    *) echo "Invalid input";;

esac


       
           
       
