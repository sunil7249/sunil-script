#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]

then
  echo "ERROR :: please run this srcipt with root user"
  exit 1
else
     echo "you are root user"
fi

  yum install mysqltt -y

if [ $? -ne 0 ]
then
   echo "ERROR :: installation mysql is failed"
   exit 1
else
   echo "Mysql installation is success"
fi
