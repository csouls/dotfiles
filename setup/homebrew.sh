brew upgrade
brew update

brew tap caskroom/cask
brew tap homebrew/dupes
brew tap caius/jo
brew tap sanemat/font

brew install adns
brew install android-ndk
brew install android-sdk
brew install ant
brew install astyle
brew install autoconf
brew install automake
brew install aws-elasticbeanstalk
brew install awscli
brew install binutils
brew install boost
brew install boot2docker
brew install cairo
brew install ccache
brew install chromedriver
brew install cloog
brew install cmake
brew install cmigemo
brew install codeclimate
brew install coreutils
brew install csshx
brew install ctags
brew install czmq
brew install dep
brew install dex2jar
brew install docker
brew install eigen
brew install elixir
brew install emacs
brew install erlang
brew install ethereum
brew install fdk-aac
brew install ffmpeg
brew install findutils
brew install fontconfig
brew install fontforge
brew install freetype
brew install gcc
brew install gd
brew install gdbm
brew install gettext
brew install ghostscript
brew install git
brew install git-flow
brew install git-lfs
brew install glib
brew install glide
brew install gmp
brew install gnu-sed
brew install gnupg
brew install gnutls
brew install go
brew install gobject-introspection
brew install gradle
brew install graphite2
brew install graphviz
brew install grep
brew install harfbuzz
brew install heroku
brew install heroku-node
brew install highlight
brew install hub
brew install icu4c
brew install ilmbase
brew install imagesnap
brew install isl
brew install jasper
brew install jbig2dec
brew install jemalloc
brew install jenkins
brew install jo
brew install jpeg
brew install jq
brew install kubernetes-cli
brew install lame
brew install libassuan
brew install libevent
brew install libffi
brew install libgcrypt
brew install libgpg-error
brew install libiconv
brew install libidn2
brew install libksba
brew install libmikmod
brew install libmpc
brew install libogg
brew install libpng
brew install libssh2
brew install libtasn1
brew install libtermkey
brew install libtiff
brew install libtool
brew install libunistring
brew install libusb
brew install libuv
brew install libvorbis
brew install libvpx
brew install libvterm
brew install libxml2
brew install libxslt
brew install libyaml
brew install little-cms2
brew install lua
brew install luajit
brew install lv
brew install mad
brew install memcached
brew install mercurial
brew install mobile-shell
brew install mosh
brew install mpfr
brew install msgpack
brew install mycli
brew install mysql
brew install nasm
brew install neovim
brew install nettle
brew install nkf
brew install node
brew install npth
brew install nsq
brew install numpy
brew install oniguruma
brew install opencore-amr
brew install opencv
brew install openexr
brew install openjpeg
brew install openldap
brew install openssl
brew install p11-kit
brew install pandoc
brew install pango
brew install pcre
brew install perl
brew install perl-build
brew install pinentry
brew install pixman
brew install pkg-config
brew install plantuml
brew install plenv
brew install portmidi
brew install postgresql
brew install protobuf
brew install pyenv
brew install python
brew install python3
brew install qt
brew install qt5
brew install rbenv
brew install rbenv-gem-rehash
brew install rbenv-gemset
brew install readline
brew install reattach-to-user-namespace
brew install redis
brew install ricty
brew install rmtrash
brew install ruby
brew install ruby-build
brew install rust
brew install sdl
brew install sdl_image
brew install sdl_mixer
brew install sdl_ttf
brew install sl
brew install source-highlight
brew install sox
brew install sqlite
brew install tbb
brew install telnet
brew install texi2html
brew install theora
brew install tig
brew install tmux
brew install tree
brew install unibilium
brew install unixodbc
brew install v8
brew install vault
brew install vim
brew install webp
brew install wget
brew install wsta
brew install wxmac
brew install x264
brew install xvid
brew install xz
brew install yasm
brew install z
brew install zeromq
brew install zlib
brew install zsh

# font
fonts=(
  font-m-plus
  font-source-code-pro
  font-clear-sans
  font-roboto
)
brew cask install --force ${fonts[@]}

## ricty
cp -f /PATH/TO/RICTY/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

# brew cask install --force adobe-air
# brew cask install --force adobe-creative-cloud
# brew cask install --force adobe-reader
# brew cask install --force alfred
# brew cask install --force amethyst
# brew cask install --force android-studio
# brew cask install --force appcleaner
# brew cask install --force bettertouchtool
# brew cask install --force box-sync
# brew cask install --force charles
# brew cask install --force coteditor
# brew cask install --force dropbox
# brew cask install --force firefox
# brew cask install --force flash
# brew cask install --force flip4mac
# brew cask install --force genymotion
# brew cask install --force google-chrome
# brew cask install --force google-japanese-ime
# brew cask install --force gyazo
# brew cask install --force hipchat
# brew cask install --force hyperswitch
# brew cask install --force istat-menus
# brew cask install --force iterm2
# brew cask install --force java
# brew cask install --force karabiner
# brew cask install --force league-of-legends
# brew cask install --force lightpaper
# brew cask install --force mou
# brew cask install --force reflector
# brew cask install --force seil
# brew cask install --force sequel-pro
# brew cask install --force skype
# brew cask install --force sourcetree
# brew cask install --force spotify
# brew cask install --force steam
# brew cask install --force texturepacker
# brew cask install --force vagrant
# brew cask install --force virtualbox
# brew cask install --force vlc

brew cleanup
