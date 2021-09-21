dotfiles
===========

## Installation on mac

1. Install Xcode from [Mac App Store](https://apps.apple.com/jp/app/xcode/id497799835)
2. Install Command Line Tools for Xcode from [Apple Developer Downloads](https://developer.apple.com/download/more/)
3. run `sudo xcodebuild -license` and press `q` -> `agree`
4. Clone this repository, cd `dotfiles` directory
5. run `git submodule update --init`
6. run `./setup.sh`
7. Launch applications and update Accessibility ( in Preferences -> Security and Privacy -> Privacy tab )

### iTerm2

1. iTerm2 -> General -> Preferences -> Check the "Load preferences from a custom folder or URL:"
2. Set the `dotfiles/config/mac/iTerm2` directory

