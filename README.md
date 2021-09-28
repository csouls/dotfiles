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
- [Zoom](https://zoom.us/download)
- [Clipy](https://clipy-app.com/)

## Settings

### Mac System Preferences

#### Keyboard
- Keyboard -> Modifier Keys... -> `Caps Lock Key` to `Control`
- Shortcut -> Input Source: change `Command+Space`
- Shortcut -> Spotlight: change `Control+Space`
- Input Sources -> Set Google IME. note: [Deleting Default Keyboard Input Source](https://apple.stackexchange.com/questions/108622/os-x-10-9-deleting-keyboard-input-sources)

### iTerm2
1. iTerm2 -> Preferences -> General -> Preferences -> Check the "Load preferences from a custom folder or URL:"
2. Set the `dotfiles/config/mac/iTerm2` directory -> choise [Don't copy]

### Karabiner-Elements

#### Simple modifications
- (For JIS to US Keyboard) `International3` -> `grave_accent_and_tilde`
- (For Realforce JIS) `PCキーボードの無変換キー` -> `left_control`
- (For Realforce JIS) `PCキーボードの変換キー` -> `escape`

#### Complex modifications
- Add rule -> Import more...Internet... -> Download `Emacs key bindings` -> Enable `Emacs key bindings [control+keys]`

#### Virtual Keyboard
- (IF Use  US Keyboard) Country code: 1  -> Set JIS Keybaord
- (IF Use JIS Keyboard) Country code: 45 -> Set JIS Keybaord

### Vim
1. run vim
2. `:PlugInstall` to install plugins
