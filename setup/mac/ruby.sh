#!/bin/sh

# install 2.1.2
rbenv install 2.1.2
rbenv global 2.1.2
rbenv rehash

# install homesick
rbenv exec gem install homesick
rbenv rehash

# setup homesick
rbenv exec homesick clone $GITHUB_USER/dotfiles
rbenv exec homesick pull dotfiles
yes | rbenv exec homesick symlink dotfiles
