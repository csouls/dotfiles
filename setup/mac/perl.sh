#!/bin/sh

# install 5.18.2
plenv install 5.18.2
plenv global 5.18.2
plenv rehash

# install cpanm
plenv install-cpanm

# install dropbox-api-command
plenv exec cpanm App::dropboxapi

plenv rehash
