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
# The backup directory is stored alongside the existing data directory.
BACKUP_DIR="${DATA_DIR}.bak"
# Create backups
DATA_DIR_FILES="${DATA_DIR}/*"
mkdir -p $BACKUP_DIR
cp -R $DATA_DIR_FILES "${BACKUP_DIR}/"
cd $BACKUP_DIR
git add .
git commit -m "$TASK_COMMAND" > /dev/null
/usr/bin/task $@
cp -R $DATA_DIR_FILES "${BACKUP_DIR}/"
git add .
git commit -m "$TASK_COMMAND" > /dev/null
exit 0
