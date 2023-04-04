#!/bin/bash

# export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_CLEANUP=1
SCRIPT_DIR=$(cd $(dirname $0); pwd)

echo "-- brew update"
brew update

echo "-- brew install packages"
cat /dev/null > "${SCRIPT_DIR}/brew_install_package.sh"
LIST=$(brew list -1)
cat "${SCRIPT_DIR}/package_list.txt" | while read -r PACKAGE; do
  echo $LIST | grep ${PACKAGE} 1>/dev/null 2>/dev/null
  if [ $? -eq 1 ]; then
    echo "brew install ${PACKAGE}" >> "${SCRIPT_DIR}/brew_install_package.sh"
  fi
done
bash "${SCRIPT_DIR}/brew_install_package.sh"
rm "${SCRIPT_DIR}/brew_install_package.sh"

echo "-- brew install packages head"
cat /dev/null > "${SCRIPT_DIR}/brew_install_package_head.sh"
cat "${SCRIPT_DIR}/package_head_list.txt" | while read -r PACKAGE; do
  echo $LIST | grep ${PACKAGE} 1>/dev/null 2>/dev/null
  if [ $? -eq 1 ]; then
    echo "brew install ${PACKAGE}" >> "${SCRIPT_DIR}/brew_install_package_head.sh"
  fi
done
bash "${SCRIPT_DIR}/brew_install_package_head.sh"
rm "${SCRIPT_DIR}/brew_install_package_head.sh"

# brew tap homebrew/cask
# brew cask install chromedriver

echo "-- brew cleanup"
brew cleanup
