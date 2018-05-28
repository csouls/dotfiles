#!/bin/bash
set -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

cd ~/.oh-my-zsh
git fetch origin
git reset --hard origin/master

ln -sf ${SCRIPT_DIR}/config/tmux-powerline-theme.sh ${SCRIPT_DIR}/../../homedot/tmux/tmux-powerline/themes/default.sh

echo echo 'iTerm > Preferences > Profiles > Text Uncheck "Treat ambiguous-width characters as double width" at "Double-Width Characters".'
