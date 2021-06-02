#!/bin/bash

read -p 'Enter user Name: ' username

if [ "$username" == "root" ]; then
    echo"hey,user $username is admin user"
else
    echo"hey,user $username is normal user"
fi

read -p ' Enter filename: ' filename

if [ -f "$filename" ]; then
  echo " $filename file exits "
else
  echo " $filename file dosenot exits "

fi
