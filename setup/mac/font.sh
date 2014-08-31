#!/bin/sh

cp -f $(brew --prefix)/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf
echo "Ricty font was installed"
