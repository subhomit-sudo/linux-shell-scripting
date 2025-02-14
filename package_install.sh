#!/bin/bash

<<info
This script will install the package
that you pass in arguments
info

echo "Installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "Installing Done!"


