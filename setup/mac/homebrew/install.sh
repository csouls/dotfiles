#!/bin/bash

echo "-- brew update"
brew update
# export HOMEBREW_NO_AUTO_UPDATE=1
SCRIPT_DIR=$(cd $(dirname $0); pwd)

LIST=$(brew list --version | cut -d' ' -f1)

echo "-- brew install packages"
while read PACKAGE; do
  echo ${LIST} | grep -q ${PACKAGE}
  if [ $? -ne 0 ]; then
    brew list ${PACKAGE} 1>/dev/null 2>/dev/null || brew install ${PACKAGE}
  fi
done < "${SCRIPT_DIR}/package_list.txt"

while read PACKAGE; do
  echo ${LIST} | grep -q ${PACKAGE}
  if [ $? -ne 0 ]; then
    brew list ${PACKAGE} 1>/dev/null 2>/dev/null || brew install --head ${PACKAGE}
  fi
done < "${SCRIPT_DIR}/package_head_list.txt"

# brew tap homebrew/cask
# brew cask install chromedriver

brew cleanup
