#!/bin/bash

set -eu

echo -n "input your github account: "
read GITHUB_USER
export GITHUB_USER
git submodule update --init --recursive

if [ "$(uname)" = "Darwin" ]; then
  sh setup/setup_mac.sh
elif [ "$(uname)" = "Linux" ]; then
  sh setup/setup_linux.sh
fi

path=$(cd $(dirname $0); pwd)
# copy dotfiles
for file in $(ls homedot)
do
  from=$path/homedot/$file
  to="$HOME/."$file
  if [ -L $to ]; then
    rm $to
  fi
  ln -sf $from $to
done

# copy normal files
for file in $(ls home)
do
  from=$path/home/$file
  to="$HOME/"$file
  if [ -L $to ]; then
    rm $to
  fi
  ln -sf $from $to
done

# make directories
cd ~
mkdir -p bin lib src tmp .vim/tmp
