#!/bin/bash

ID=$(id -u)

VALIDATE(){

  if [ $1 -ne 0 ]
  then
   echo "ERROR :: $2 ... failed"
   exit 1
  else
   echo "$2 ... success"
  fi
}

yum install mysql -y

VALIDATE $? "mysql installation"

yum install git -y 
 VALIDATE $? "git installation"