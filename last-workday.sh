#!/bin/sh

day=`date -d "$(date +%m/01/%Y) -1 day" | awk '{print $1}'`; 
if [ $day == Sat ]; then  
    D=`date -d "$(date +%m/01/%Y) -2 day" "+%d/%m/%Y"`;
    echo $D; 
elif [ $day == Sun ]; then  
    D=`date -d "$(date +%m/01/%Y) -3 day" "+%d/%m/%Y"`;
    echo $D; 
else 
    D=`date -d "$(date +%m/01/%Y) -1 day" "+%d/%m/%Y"`;
    echo $D; 
fi
