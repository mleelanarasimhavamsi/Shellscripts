#!/bin/bash


# number=$1

# if [ $number -lt 10 ]; then


#     echo "Given number $number is lessthan 10"
# else
#     echo "Given number $number is greterthan 10"
# fi


echo "Please enter the number"
read number

if[ $(($number % 2)) -eq 0 ]; then
    echo "Given $number is even"
else
    echo "Given $number is odd"

fi