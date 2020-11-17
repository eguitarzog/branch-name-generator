#!/bin/bash
TODAY=$(date +"%Y-%mm-%d")

# Or change this to your github username if you prefer!
USERNAME=$USER

echo "ticket id?"
read -r ticket

echo "description?"
read -r desc

BRANCH="$USERNAME/$ticket/$TODAY/$desc"
BRANCH="$(echo "$BRANCH" | tr '[:upper:]' '[:lower:]' | sed 's/[^ a-z0-9\/-]//ig' | tr -s ' ' | tr ' ' '-')"

git checkout -b "$BRANCH"
# Or use this if you prefer to put it in your clipboard:
# echo "$BRANCH" | pbcopy
