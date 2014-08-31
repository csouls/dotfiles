#!/bin/sh

# chsh
path_zsh=$(find $(brew --prefix)/bin -name zsh)
if [ -n ${path_zsh} ]; then
    if [ $SHELL != ${path_zsh} ]; then
        echo ${path_zsh} | sudo tee -a /etc/shells
        chsh -s ${path_zsh}
    fi
fi
