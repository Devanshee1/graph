#!/bin/bash

# Create a dummy file
touch activity.txt

# Loop through dates
for i in {1..10}
do
  echo "Commit $i" >> activity.txt
  GIT_AUTHOR_DATE="2025-01-01$iT12:00:00" GIT_COMMITTER_DATE="2025-01-01$iT12:00:00" \
  git add activity.txt
  git commit -m "Fake commit $i"
done
