#!/bin/sh
export GITHUB_USER=yusuket
git submodule update --init --recursive

#if [ `uname` = "Darwin" ]; then
#  ./setup/setup_mac.sh
#elif [ `uname` = "Linux" ]; then
#  ./setup/setup_linux.sh
#fi

path=$(cd $(dirname $0); pwd)
for file in $(ls homedot)
do
  from=$path/homedot/$file
  to="$HOME/."$file
  if [ -L $to ]; then
    rm $to
  fi
  ln -sf $from $to
done
