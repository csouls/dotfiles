#!/bin/bash
set -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

# homebrew
which brew > /dev/null
if [ $? -ne 0  ]; then
  echo "Please install Homebrew from https://brew.sh/"
  exit 1
fi
sh ${SCRIPT_DIR}/mac/homebrew/install.sh

# install cargo packages
sh ${SCRIPT_DIR}/mac/cargo/install.sh

# install oh-my-zsh
if [ ! -e ~/.oh-my-zsh ]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# post processing
mkdir -p ~/Library/LaunchAgents
find ${SCRIPT_DIR}/mac -name "*.sh" -maxdepth 1 | xargs -I S sh S
