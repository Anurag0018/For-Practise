#!/bin/bash
<< info 
this shell script checks if user exits 
info

read -p "enter the username" username

count=$(cat /etc/passwd | grep $username | wc -l)

if [  "$count" -eq 0  ];
then 
	echo "user doest not exist"
else 
	echo " user exist"
fi
