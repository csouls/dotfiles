#!/bin/sh

ln -sfv $(brew --prefix)/opt/mysql/*.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
