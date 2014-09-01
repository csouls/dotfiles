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
