#!/bin/bash

#  Monitor top 5 consuming processes
ps -eo pcpu,pid,user,args --no-headers| sort -t, -nk1,2 -k4,4 -r |head -n 5

# Change a single user password
echo -e "htc\nhtc" | passwd usertwo

# Update password for multiple users
for i in `cat ~/Scripts/userlist.txt`; do
  echo -e "htc\nhtc" | passwd $i
done
