#!/bin/bash
TODAY=$(date +"%Y-%m-%d")

# Or change this to your github username if you prefer!
USERNAME=`git config user.name`

if [ -z "$USERNAME" ]
then
  USERNAME=$USER
fi

echo "ticket id?"
read -r ticket

echo "description?"
read -r desc

TICKET="$(echo $ticket | tr '[:lower:]' '[:upper:]' | sed 's/ /-/g')"
DESC="$(echo "$desc" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')"
BRANCH="$USERNAME/$TICKET/$TODAY/$DESC"

git checkout -b "$BRANCH"
# Or use this if you prefer to put it in your clipboard:
# echo "$BRANCH" | pbcopy
