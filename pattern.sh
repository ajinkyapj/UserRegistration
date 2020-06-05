#!/bin/bash -x

function check()
{
        i=$1
        j=$2
        if [[ $i =~ $j ]]
        then
                echo Saved
        else
                echo Invalid Input
        fi
}

name="^[A-Z][A-Za-z0-9]{2,}$"
email="^[0-9a-zA-Z]+[.]*[0-9a-zA-z]*[@][a-zA-Z]+([.][a-zA-Z]+){1,2}$"
pno="^[0-9]{2}[ ][0-9]{10}$"
pass="^[a-z(A-Z)+(0-9)+(!@#$&+=*/_%^~){1}]{8,}$"

echo "Enter your valid First name :-"
read fname
check $fname $name

echo "Enter your valid Last name :-"
read lname
check $lname $name

echo "Enter your valid Email id :-"
read eID
check $eId $email

echo "Enter your valid mobile number :-"
read num
check "$num" "$pno"

echo "Enter the password :- "
read password
check $password $pass
