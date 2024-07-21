#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){

  if [ $1 -ne 0 ]
  then
   echo -e  "ERROR :: $2 ... $R failed $N"
   exit 1
  else
   echo  -e "$2 ... $G success $N "
  fi
}
if [ $ID -ne 0 ]

then
  echo -e  "$R ERROR :: please run this srcipt with root user $N"
  exit 1
else
     echo  "you are root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "mysql installation"

yum install git -y &>> $LOGFILE
 VALIDATE $? "git installation"