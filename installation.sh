#!/bin/bash


USERID=$(id-u)

Y="\e[33m"

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
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else 
    echo -e "mysql allready exist ... $Y Skipping"
fi

dnf install nginx -y
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else 
    echo -e "nginx allready exist ... $Y Skipping"
fi

dnf install python -y
if [ $? -ne 0 ]; then
    dnf install python -y
    VALIDATE $? "python"
else 
    echo -e "python allready exist ... $Y Skipping"
fi




