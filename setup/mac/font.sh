#!/bin/sh

if [ ! -f ~/Library/Fonts/Ricty-Regular.ttf ]; then
  cp -f $(brew --prefix)/share/fonts/Ricty*.ttf ~/Library/Fonts/
  fc-cache -vf
  echo "Ricty font was installed"
fi
