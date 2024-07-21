#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){

  if [ $1 -ne 0 ]
  then
   echo "ERROR :: $2 ... failed"
   exit 1
  else
   echo "$2 ... success"
  fi
}
if [ $ID -ne 0 ]

then
  echo "ERROR :: please run this srcipt with root user"
  exit 1
else
     echo "you are root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "mysql installation"

yum install git -y &>> $LOGFILE
 VALIDATE $? "git installation"