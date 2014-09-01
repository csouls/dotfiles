#!/bin/sh
export GITHUB_USER=yusuket

if [ `uname` = "Darwin" ]; then
  ./setup/setup_mac.sh
elif [ `uname` = "Linux" ]; then
  ./setup/setup_linux.sh
fi

path=$(cd $(dirname $0); pwd)
for file in $(ls home)
do
  from=$path/home/$file
  to="$HOME/."$file
  if [ ! -L ~/.zsh ]; then
    ln -sf $from $to
  fi
done
