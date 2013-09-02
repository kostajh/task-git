#!/bin/bash

# Get task command
TASK_COMMAND="task ${@}"
# Get data dir
DATA_RC=$(task _show | grep data.location)
DATA=(${DATA_RC//=/ })
DATA_DIR=${DATA[1]}
if [ ! -d "$DATA_DIR" ]; then
  echo 'Could not load data directory!'
  exit 1
fi

# Create backups
/usr/bin/task $@
cd $DATA_DIR
git add .
git commit -m "$TASK_COMMAND" > /dev/null
# Check if --task-git-push is passed as an argument.
for i
do
  if [ "$i" == "--task-git-push" ]; then
    git push origin master
  fi
done
exit 0
