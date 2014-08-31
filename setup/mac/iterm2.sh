#!/bin/sh

# change terminal to xtarm-256-color
/usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Terminal Type\" xterm-256color" ~/Library/Preferences/com.googlecode.iterm2.plist

# blink cursor
/usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Blinking Cursor\" true" ~/Library/Preferences/com.googlecode.iterm2.plist

# ambiguous double width
/usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Ambiguous Double Width\" true" ~/Library/Preferences/com.googlecode.iterm2.plist

# bell silenced
/usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Silence Bell\" true" ~/Library/Preferences/com.googlecode.iterm2.plist

# Option key send config
/usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Option Key Sends\" 2" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Right Option Key Sends\" 2" ~/Library/Preferences/com.googlecode.iterm2.plist

# font config(Ricty)
/usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Normal Font\" \"Ricty-Regular 13\"" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Non Ascii Font\" \"Ricty-Regular 13\"" ~/Library/Preferences/com.googlecode.iterm2.plist

# set transparency
/usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Transparency\" 0.224709" ~/Library/Preferences/com.googlecode.iterm2.plist

# config clipboard
/usr/libexec/PlistBuddy -c "Set :\"PasteFromClipboard\" false" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Set :\"AllowClipboardAccess\" true" ~/Library/Preferences/com.googlecode.iterm2.plist

# apparence
/usr/libexec/PlistBuddy -c "Set :\"WindowStyle\" 1" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Set :\"TabViewType\" 1" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Set :\"HideTab\" false" ~/Library/Preferences/com.googlecode.iterm2.plist

THEMEDIR=`dirname $0`/../themes/iterm2/

cd $THEMEDIR

for f in *; do
    THEME=$(basename "$f")
    defaults write -app iTerm 'Custom Color Presets' -dict-add "$THEME" "`cat $f`"
done

cd -
