#!/bin/bash

REPO_TREE=$(git rev-parse --show-superproject-working-tree --show-toplevel)
if [ $? -ne 0 ]; then
  echo "need to run on the git repository"
  exit 1
fi
REPO_ROOT=$(echo ${REPO_TREE} | head -1)

TARGET_FILE=$1
if [ ! -e "${REPO_ROOT}/${TARGET_FILE}" ]; then
  echo "${REPO_ROOT}/${TARGET_FILE} is not found"
fi

git filter-branch --force --index-filter "git rm -r --cached --ignore-unmatch '${TARGET_FILE}'" --prune-empty --tag-name-filter cat -- --all
