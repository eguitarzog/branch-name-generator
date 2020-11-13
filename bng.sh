#!/bin/bash
TODAY=$(date +"%Y%m%d")

#echo "name?"
#read name
#NAME="$(echo $name | tr '[A-Z]' '[a-z]' | sed 's/ //g')"

echo "ticket id?"
read ticket
TICKET="$(echo $ticket | tr '[a-z]' '[A-Z]' | sed 's/ /-/g')"

echo "description?"
read desc
DES="$(echo $desc | tr '[A-Z]' '[a-z]' | sed 's/ /_/g')"
#branch="$NAME/$TICKET/$TODAY/$DES"
BRANCH="$USER/$TICKET/$TODAY/$DES"

git checkout -b $BRANCH
