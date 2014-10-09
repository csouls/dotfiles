brew upgrade
brew update

brew tap phinze/homebrew-cask
# homebrew-cask need password
brew install caskroom/cask/brew-cask

# utils
brew install autoconf
brew install automake
brew install openssl
brew install readline
brew install nkf
brew install --HEAD cmigemo

# gnu utils
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew install xz
brew install binutils
brew install coreutils
brew install findutils
brew install gnu-sed

# git
brew install git
brew install git-flow
brew install tig
brew install hub

# hg
brew install mercurial

# lua
brew install lua

# perl
brew install plenv
brew install --HEAD perl-build

# python
brew install pyenv

# ruby
brew install rbenv
brew install --HEAD ruby-build
brew install rbenv-gemset
brew install rbenv-gem-rehash

# shell
brew install zsh --disable-etcdir
brew install tmux
brew install reattach-to-user-namespace
brew install source-highlight

# vim
brew install vim --devel --with-lua

# emacs
brew install emacs --use-git-head --japanese

# ssh
brew install mobile-shell
brew install csshx

# command line tools
brew install lv
brew install wget
brew install jq
brew install z
brew install rmtrash
brew install tree

# database
brew install mysql
brew install memcached
brew install redis

# android
brew install ant
brew install android-sdk
brew install android-ndk
brew install gradle

# font
brew tap sanemat/font
brew install ricty

# docker
brew install docker

# aws
brew install awscli
brew install aws-elasticbeanstalk

brew cask install adobe-air
brew cask install adobe-creative-cloud
brew cask install adobe-reader
brew cask install alfred
brew cask install amethyst
brew cask install android-studio
brew cask install appcleaner
brew cask install atom
brew cask install bettertouchtool
brew cask install box-sync
brew cask install charles
brew cask install coteditor
brew cask install dropbox
brew cask install firefox
brew cask install flash
brew cask install flip4mac
brew cask install genymotion
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install gyazo
brew cask install hipchat
brew cask install hyperswitch
brew cask install istat-menus
brew cask install iterm2
brew cask install java
brew cask install karabiner
brew cask install league-of-legends
brew cask install lightpaper
brew cask install reflector
brew cask install seil
brew cask install sequel-pro
brew cask install skype
brew cask install sourcetree
brew cask install spotify
brew cask install steam
brew cask install texturepacker
# brew cask install unity3d # need password
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

brew cask alfred link

brew cleanup

