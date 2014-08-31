#!/bin/sh

# install 2.7.6
pyenv install 2.7.6
pyenv global 2.7.6
pyenv rehash

# install percol
pyenv exec pip install percol --allow-external percol --allow-unverified percol

# install awscli
pyenv exec pip install awscli

# install pygments
pyenv exec pip install pygments

# install boto for aws
pyenv exec pip install boto

pyenv rehash








