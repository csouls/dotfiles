#!/bin/bash

brew update
# export HOMEBREW_NO_AUTO_UPDATE=1
SCRIPT_DIR=$(cd $(dirname $0); pwd)

LIST=$(brew list --version | cut -d' ' -f1)
while read PACKAGE; do
  echo ${LIST} | grep -q ${PACKAGE} || brew install ${PACKAGE}
done < "${SCRIPT_DIR}/package_list.txt"

while read PACKAGE; do
  echo ${LIST} | grep -q ${PACKAGE} || brew install ${PACKAGE}
done < "${SCRIPT_DIR}/package_head_list.txt"

# brew tap homebrew/cask
# brew cask install chromedriver

brew cleanup
