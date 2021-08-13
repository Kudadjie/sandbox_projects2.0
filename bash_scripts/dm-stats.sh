#!/bin/bash

source functions_for_dm_stat

echo "      Disk Space / Memory Checker"

echo "      *******************************************
      Used memory: "$(used_memory)"  
      Free memory: "$(free_memory)" 
      Total memory available: "$(av_memory)" 
      *******************************************"
echo " "

echo "      *******************************************
      Used disk space: "$(used_space)"  
      Free disk space: "$(free_space)" 
      % of disk space used: "$(percent_space_used)"
      Total disk space available: "$(av_space)" 
      *******************************************"



