#!/bin/bash
course=Devops

echo course name =$course


No_OF_user=$(who | wc -l)
echo number of users logged in = $No_OF_user


ADD=$((6+7+9))
BIG=$((10+20*50/3))

echo = $BIG + $ADD
