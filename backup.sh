#!/bin/bash

<<info
this is backup scripts which backed up scripts.

info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d')

zip "$dest/backup-$timestamp.zip" $src

echo "backup has been stored successfully"
