#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]

then
  echo "ERROR :: please run this srcipt with root user"
  exit 1
else
     echo "you are root user"
fi

  yum install mysql -y

if [ $? -ne 0 ]
then
   echo "ERROR :: installation mysql is failed"
   exit 1
else
   echo "Mysql installation is success"
fi

  yum install git -y

if [ $? -ne 0 ]
then
   echo "ERROR :: installation git is failed"
   exit 1
else
   echo "git installation is success"
fi
