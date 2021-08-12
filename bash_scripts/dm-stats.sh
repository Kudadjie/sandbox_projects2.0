#!/bin/bash

free_memory (){
    
    free -h | head -2 | tail -1 | awk '{print $4}'
}

used_memory(){
    free -h | head -2 | tail -1 | awk '{print $3}'
}

av_memory(){
    free -h | head -2 | tail -1 | awk '{print $2}'
}

free_space(){
	df -h / | head -2 | tail -1 | awk '{print $4}'
}

used_space(){
	df -h / | head -2 | tail -1 | awk '{print $3}'
}	

av_space(){
	df -h / | head -2 | tail -1 | awk '{print $2}'
}

percent_space_used(){
    df -h / | head -2 | tail -1 | awk '{print $5}'
    
}

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



