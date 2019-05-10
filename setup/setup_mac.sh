#!/bin/bash
set -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

# homebrew
which brew > /dev/null
if [ $? -ne 0  ]; then
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  sh ${SCRIPT_DIR}/mac/homebrew/install.sh
fi

# install oh-my-zsh
if [ -e ~/.oh-my-zsh ]; then
  cd ~/.oh-my-zsh
  git fetch origin
  git reset --hard origin/master
else
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# install oh-my-zsh tmux-powerline
if [ -e ~/.oh-my-zsh/themes/oh-my-zsh-powerline-theme ]; then
  cd ~/.oh-my-zsh/themes/oh-my-zsh-powerline-theme
  git fetch origin
  git reset --hard origin/master
else
  git clone https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme.git ~/.oh-my-zsh/themes/oh-my-zsh-powerline-theme
  sh ~/.oh-my-zsh/themes/oh-my-zsh-powerline-theme/install_in_omz.sh
fi

# post processing
mkdir -p ~/Library/LaunchAgents
find ${SCRIPT_DIR}/mac -name "*.sh" -maxdepth 1 | xargs -I S sh S
