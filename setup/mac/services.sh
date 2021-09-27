#!/bin/sh

echo "-- launchctl reload services"

SERVICES=(
  memcached
  mysql
  redis
)

for SERVICE in ${SERVICES[@]}; do
  BREW_PLIST="$(brew --prefix)/opt/${SERVICE}/homebrew.mxcl.${SERVICE}.plist"
  if [ -e "${BREW_PLIST}" ]; then
    ln -sfv "${BREW_PLIST}" "${HOME}/Library/LaunchAgents"
  fi
  launchctl unload "${HOME}/Library/LaunchAgents/homebrew.mxcl.${SERVICE}.plist" 2>/dev/null
  launchctl   load "${HOME}/Library/LaunchAgents/homebrew.mxcl.${SERVICE}.plist" 2>/dev/null
done
