#!/bin/sh
export GITHUB_USER=csouls
git submodule update --init --recursive

if [ `uname` = "Darwin" ]; then
  ./setup/setup_mac.sh
elif [ `uname` = "Linux" ]; then
  ./setup/setup_linux.sh
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

# make user directories
cd ~
mkdir -p bin lib src tmp
