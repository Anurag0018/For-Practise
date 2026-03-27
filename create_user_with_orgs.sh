#!/bin/bash
#using  
echo "user creation"

read -p "enter the username:" username
read -p "enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "creation of user password"

sudo userdel "$username"

echo "deletion of user completed"
cat /etc/passwd | grep $username | wc
echo " as wc is 0

