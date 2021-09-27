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

## Other

- [Google IME](https://www.google.co.jp/ime/)
- [Karabiner-Elements](https://karabiner-elements.pqrs.org/)
- [Slack](https://slack.com/intl/ja-jp/downloads/)

## Settings

### iTerm2

1. iTerm2 -> Preferences -> General -> Preferences -> Check the "Load preferences from a custom folder or URL:"
2. Set the `dotfiles/config/mac/iTerm2` directory -> choise [Don't copy]

### Karabiner-Elements

#### Simple modifications
- From `caps_lock` To `left_control`
- (For JIS to US Keyboard) From `International3` -> `grave_accent_and_tilde`

#### Complex modifications
- Add rule -> Import more...Internet... -> Download `Emacs key bindings` -> Enable `Emacs key bindings [control+keys]`

#### Virtual Keyboard
- (IF Use  US Keyboard) Country code: 1  -> Set JIS Keybaord
- (IF Use JIS Keyboard) Country code: 45 -> Set JIS Keybaord

### Vim

1. run vim
2. `:PlugInstall` to install plugins

### Mac System Preferences

#### Keyboard
- Shortcut -> Input Source: change Command+Space
- Shortcut -> Spotlight: change Control+Space

