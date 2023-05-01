dotfiles
===========

## Installation on mac
1. Install [Homebrew](https://brew.sh/index_ja)
1. `brew install gh` and setup git
1. `gh repo clone csouls/dotfiles`
1. run `git submodule update --init`
1. run `./setup.sh`

## Other
- [Google IME](https://www.google.co.jp/ime/)
- [iTerm2](https://iterm2.com/)
- [Karabiner-Elements](https://karabiner-elements.pqrs.org/)
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
#### Simple modifications for JIS Keyboard
- (For Realforce) `PCキーボードの無変換キー` -> `left_control`
- (For Realforce) `PCキーボードの変換キー` -> `escape`

### Vim
1. run vim
2. `:PlugInstall` to install plugins
