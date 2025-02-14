#!/bin/bash

<<info

function called craete user
info

function create_user {

read -p "enter a user name" username

useradd -m $username

echo "user created successfully"
}

for (( i=1 ; i<=5 ; i++))
do
	create_user

done




