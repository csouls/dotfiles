#!/bin/bash
set -eu

cd `dirname $0`

# homebrew
which brew > /dev/null
if [ $0 -ne 0  ]; then
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  sh ./homebrew.sh
fi

# post processing
find mac -name "*.sh" | xargs -I S sh S

# oh-my-zsh and powerline
if [ ! -e ~/.oh-my-zsh ]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

if [ ! -e ../home/tmux/tmux-powerline ]; then
  git clone https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme.git ~/.oh-my-zsh/themes/oh-my-zsh-powerline-theme
  sh ~/.oh-my-zsh/themes/oh-my-zsh-powerline-theme/install_in_omz.sh
  ln -sf $(pwd)/mac/tmux-powerline-theme.sh ../homedot/tmux/tmux-powerline/themes/default.sh
  echo 'iTerm > Preferences > Profiles > Text Uncheck "Treat ambiguous-width characters as double width" at "Double-Width Characters".'
fi
