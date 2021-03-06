#!/bin/bash

brew upgrade
brew update
export HOMEBREW_NO_AUTO_UPDATE=1

brew install adns
brew install ant
brew install astyle
brew install autoconf
brew install automake
brew install awscli
brew install binutils
brew install boost
brew install boot2docker
brew install cairo
brew install ccache
brew install cloog
brew install cmake
brew install cmigemo
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
brew install gradle
brew install graphite2
brew install graphviz
brew install grep
brew install harfbuzz
brew install heroku/brew/heroku
brew install heroku/brew/heroku-node
brew install highlight
brew install hub
brew install icu4c
brew install ilmbase
brew install isl
brew install jbig2dec
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
brew install lv
brew install mad
brew install memcached
brew install mercurial
brew install mpfr
brew install msgpack
brew install mycli
brew install mysql
brew install nasm
brew install nkf
brew install node
brew install numpy
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
brew install pkg-config
brew install plantuml
brew install plenv
brew install postgresql
brew install protobuf
brew install pyenv
brew install python
brew install python3
brew install qt
brew install rainbarf
brew install rbenv
brew install readline
brew install reattach-to-user-namespace
brew install redis
brew install ruby-build
brew install rust
brew install sdl
brew install sdl_image
brew install sdl_mixer
brew install sdl_ttf
brew install sl
brew install source-highlight
brew install sqlite
brew install tbb
brew install telnet
brew install theora
brew install tig
brew install tmux
brew install tree
brew install unixodbc
brew install v8
brew install vault
brew install vim
brew install webp
brew install wget
brew install wxmac
brew install x264
brew install xvid
brew install xz
brew install yasm
brew install zeromq
brew install zlib
brew install zsh

# https://github.com/esphen/wsta
brew tap esphen/wsta https://github.com/esphen/wsta.git
brew install wsta

brew tap homebrew/cask

brew cask install chromedriver

brew cask install java
brew cask install android-sdk
brew cask install android-studio

brew cleanup
