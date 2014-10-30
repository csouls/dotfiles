#!/bin/sh
echo "\n.chatBlock td { padding: 1px 0; }" >> /Applications/HipChat.app/Contents/Resources/chat.css && killall HipChat; open /Applications/HipChat.app
