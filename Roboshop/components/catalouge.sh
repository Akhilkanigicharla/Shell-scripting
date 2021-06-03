#!/bin/bash


source  components/common.sh
rm -f /tmp/roboshop.log

HEAD "Install nodejs"
yum install nodejs make gcc-c++ -y &>>/tmp/roboshop.log
STAT $?

HEAD "ADD roboshop user"
useradd roboshop &>>/tmp/roboshop.log
STAT $?

HEAD "Download app from git hub"
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>/tmp/roboshop.log
STAT $?

HEAD "Extract the Downloaded archive"
cd /home/roboshop && unzip /tmp/catalogue.zip &>>/tmp/roboshop.log &&mv catalogue-main catalogue
STAT $?

HEAD "Install nodejs dependences"
cd /home/roboshop/catalouge && npm install &>>/tmp/roboshop.log
STAT $?




