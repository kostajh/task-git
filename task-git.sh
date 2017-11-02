#!/bin/bash

# Get task command
TASK_COMMAND="task ${@}"
# Get data dir
DATA_RC=$(/usr/bin/task _show | grep data.location)
DATA=(${DATA_RC//=/ })
DATA_DIR=$(eval echo ${DATA[1]})
if [ ! -d "$DATA_DIR" ]; then
  echo 'Could not load data directory!'
  exit 1
fi

# Check if --task-git-push is passed as an argument.
PUSH=0
for i
do
  if [ "$i" == "--task-git-push" ]; then
    # Set the PUSH flag, and remove this from the arguments list.
    PUSH=1
    shift
  fi
done

# Call task, commit files and push if flag is set.
/usr/bin/task $@
cd $DATA_DIR
git add .
git commit -m "$TASK_COMMAND" > /dev/null

if [ "$PUSH" == 1 ]; then
  git push origin master > /dev/null
fi
exit 0