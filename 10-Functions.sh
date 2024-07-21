#!/bin/bash

ID=$(id -u)

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