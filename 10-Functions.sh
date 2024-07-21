#!/bin/bash

ID=$[ id -ne 0 ]

VALIDATE(){

if [ $? -ne 0 ]
then
   echo "ERROR :: installation is failed"
   exit 1
else
   echo "installation is success"
fi
}

yum install mysql -y

VALIDATE

yum install git -y 
 VALIDATE