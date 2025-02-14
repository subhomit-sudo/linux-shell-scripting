#!/bin/bash

<<info
this is backup scripts which backed up scripts.
./backup.sh /<<src>> /<<dest>>
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

zip -r "$dest/backup-$timestamp.zip" $src

echo "backup has been stored successfully"
