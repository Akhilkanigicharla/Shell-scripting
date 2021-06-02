#!/bin/bash

COMPONENT=$1

if [ -z "${COMPONENT}" ]; then
   echo "Component Input is needed"
   exit 1
fi

LID=lt-0d8e2147e14cf14d9
LVER=1

 aws ec2 run-instances  --launch-template  LaunchTemplateId=${LID},Version=${LVER} --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}}]"
