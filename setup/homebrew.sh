brew upgrade
brew update

brew tap phinze/homebrew-cask
# homebrew-cask need password
brew install caskroom/cask/brew-cask

# utils
brew install autoconf
brew install automake
brew install ctags
brew install nkf
brew install openssl
brew install readline
brew install --HEAD cmigemo
brew install Caskroom/cask/xquartz

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

# npm
brew install npm

# vim
brew install --force vim --with-lua

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
brew tap caius/jo
brew install jo

# database
brew install mysql
brew install memcached
brew install redis

# database client
brew install mycli

# android
brew install ant
brew install android-sdk
brew install android-ndk
brew install gradle
brew install ccache

# font
brew tap caskroom/fonts
fonts=(
  font-m-plus
  font-source-code-pro
  font-clear-sans
  font-roboto
)
brew cask install --force ${fonts[@]}

## ricty
brew tap sanemat/font
brew install ricty
cp -f /PATH/TO/RICTY/fonts/Ricty*.ttf ~/Library/Fonts/

fc-cache -vf

# docker
brew install docker

# aws
brew install awscli
brew install aws-elasticbeanstalk

brew cask install --force adobe-air
brew cask install --force adobe-creative-cloud
brew cask install --force adobe-reader
brew cask install --force alfred
brew cask install --force amethyst
brew cask install --force android-studio
brew cask install --force appcleaner
brew cask install --force bettertouchtool
brew cask install --force box-sync
brew cask install --force charles
brew cask install --force coteditor
brew cask install --force dropbox
brew cask install --force firefox
brew cask install --force flash
brew cask install --force flip4mac
brew cask install --force genymotion
brew cask install --force google-chrome
brew cask install --force google-japanese-ime
brew cask install --force gyazo
brew cask install --force hipchat
brew cask install --force hyperswitch
brew cask install --force istat-menus
brew cask install --force iterm2
brew cask install --force java
brew cask install --force karabiner
brew cask install --force league-of-legends
brew cask install --force lightpaper
brew cask install --force mou
brew cask install --force reflector
brew cask install --force seil
brew cask install --force sequel-pro
brew cask install --force skype
brew cask install --force sourcetree
brew cask install --force spotify
brew cask install --force steam
brew cask install --force texturepacker
brew cask install --force vagrant
brew cask install --force virtualbox
brew cask install --force vlc

brew cleanup
