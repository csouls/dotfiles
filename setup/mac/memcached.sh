#!/bin/sh

ln -sfv $(brew --prefix)/opt/memcached/*.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist
