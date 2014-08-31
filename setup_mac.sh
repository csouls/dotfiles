# homebrew
which brew > /dev/null
if [ ! `which brew` ]; then
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

brew install caskroom/cask/brew-cask

# make user directories
cd ~
mkdir bin lib src memo tmp
