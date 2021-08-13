#!/bin/bash

# max: threshold % of disk usage

source functions_for_dm_stat
MAX=90

echo "      Disk Space / Memory Checker"

echo "      *******************************************
      Used memory: "$(used_memory)"  
      Free memory: "$(free_memory)" 
      Total memory available: "$(av_memory)" 
      *******************************************"
echo " "

if [ $(percent_space_used) -ge $MAX ]; then
    echo -e "      *******************************************
      Used disk space: "$(used_space)"  
      Free disk space: "$(free_space)" 
      % of disk space used: "$(percent_space_used)" 
      Total disk space available: "$(av_space)" 
      "$(tput setaf 1)"WARNING: RUNNING OUT OF DISK SPACE!"$(tput sgr 0)"
      *******************************************"
else
    echo "      *******************************************
      Used disk space: "$(used_space)"  
      Free disk space: "$(free_space)" 
      % of disk space used: "$(percent_space_used)"
      Total disk space available: "$(av_space)" 
      *******************************************"
fi

