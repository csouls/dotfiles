#!/bin/bash
set -u

SCRIPT_DIR=$(cd $(dirname $0); pwd)

# homebrew
if [ ! -e '/opt/homebrew/bin/brew' ]; then
  echo "Please install Homebrew from https://brew.sh/"
  exit 1
fi
eval "$(/opt/homebrew/bin/brew shellenv)"
sh ${SCRIPT_DIR}/mac/homebrew/install.sh

# install cargo packages
sh ${SCRIPT_DIR}/mac/cargo/install.sh

# post processing
mkdir -p ~/Library/LaunchAgents
find ${SCRIPT_DIR}/mac -name "*.sh" -maxdepth 1 | xargs -I S sh S
