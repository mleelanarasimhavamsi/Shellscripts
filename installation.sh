#!/bin/bash


USERID=$(id-u)

if [ $USERID -ne 0]; then
    echo "Error :: please run the scripts with root privaliages"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0]; then
        echo "Error :: Instaling $2 failure"
        exit 1
    else
        echo "Instaling $2 is Success"
    fi
}

dnf install mysql -y
VALIDATE $? "mysql"
dnf install nginx -y
VALIDATE $? "nginx"
dnf install mongodb-mongosh -y
VALIDATE $? "mongodb"