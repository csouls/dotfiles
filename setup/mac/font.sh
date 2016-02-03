#!/bin/sh

if [ ! -f ~/Library/Fonts/Ricty-Regular.ttf ]; then
  cp -f $(brew --prefix)/share/fonts/Ricty*.ttf ~/Library/Fonts/

  git clone git@github.com:yascentur/RictyDiminished.git /tmp/RictyDiminished
  cp /tmp/RictyDiminished/*ttf ~/Library/Fonts/

  fc-cache -vf
  echo "Ricty (+Diminished) font was installed"
fi
