dotfiles
===========

## Installation on mac

1. Install the XCode from App Store
2. run `sudo xcodebuild -license` and press `q` -> `agree`
3. run `git submodule update --init`
4. run `./setup.sh`
5. Launch applications and update Accessibility ( in Preferences -> Security and Privacy -> Privacy tab )

### iTerm

1. iTerm -> General -> Preferences -> Check the "Load preferences from a custom folder or URL:"
2. Set the `dotfiles/setup/mac/config/iTerm` directory

## misc

- Karabiner export
`/Applications/Karabiner.app/Contents/Library/bin/karabiner export > setup/mac/karabiner.sh`

- Seil export
`/Applications/Seil.app/Contents/Library/bin/seil export > setup/mac/seil.sh`
