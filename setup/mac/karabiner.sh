#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set option.emacsmode_controlD 1
/bin/echo -n .
$cli set repeat.initial_wait 150
/bin/echo -n .
$cli set remap.jis_unify_eisuu_to_kana 1
/bin/echo -n .
$cli set remap.controlL2commandL 1
/bin/echo -n .
$cli set private.app_terminal_esc_with_eisuu 1
/bin/echo -n .
$cli set option.emacsmode_controlH 1
/bin/echo -n .
$cli set repeat.wait 20
/bin/echo -n .
$cli set private.capslock_hack_f19 1
/bin/echo -n .
$cli set general.dont_remap_internal 1
/bin/echo -n .
$cli set remap.jis_backquote_kana_eisuu 1
/bin/echo -n .
/bin/echo
