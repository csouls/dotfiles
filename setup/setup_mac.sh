cd `dirname $0`

# homebrew
which brew > /dev/null
if [ ! `which brew` ]; then
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  ./homebrew.sh
fi

# setup with shell scripts
find mac -name "*.sh" | xargs -I S sh S

# make user directories
cd ~
mkdir -p bin lib src memo tmp .vim/tmp

# oh-my-zsh and powerline
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone git@github.com:jeremyFreeAgent/oh-my-zsh-powerline-theme.git ~/.oh-my-zsh/themes/oh-my-zsh-powerline-theme
bash ~/.oh-my-zsh/themes/oh-my-zsh-powerline-theme/install_in_omz.sh

cp mac/tmux-powerline-theme.sh ../home/tmux/tmux-powerline/themes/default.sh
