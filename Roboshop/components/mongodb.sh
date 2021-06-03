#!/bin/bash

source /components/common.sh

HEAD "Setup MongoDB Yum repo file "
echo '[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc' >/etc/yum.repos.d/mongodb.repo
STAT$?

HEAD"Install MangoDB"
yum install -y mongodb-org &>>/tmp/roboshop.log
STAT$?

HEAD "start MangoDB service"
systemctl enable mangodb &>>/tmp/roboshop.log
systemctl start mangodb &>>/tmp/roboshop.log
STAT$?

return

HEAD "Update mangodb config file"
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf
