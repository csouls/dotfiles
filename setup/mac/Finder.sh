#!/bin/bash

echo "-- Finder settings"
defaults write com.apple.finder AppleShowAllFiles -boolean true
killall Finder
