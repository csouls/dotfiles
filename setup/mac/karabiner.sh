#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set repeat.consumer_wait 50
/bin/echo -n .
$cli set remap.jis_yen2backslash 1
/bin/echo -n .
$cli set remap.app_term_commandL2optionL_except_tab 1
/bin/echo -n .
$cli set repeat.consumer_initial_wait 300
/bin/echo -n .
$cli set option.emacsmode_controlH 1
/bin/echo -n .
$cli set repeat.wait 20
/bin/echo -n .
$cli set private.control_to_option_on_apple_keyboard 1
/bin/echo -n .
$cli set remap.jis_backquote_kana_eisuu 1
/bin/echo -n .
$cli set private.capslock_hack_f19 1
/bin/echo -n .
$cli set private.app_terminal_esc_with_eisuu 1
/bin/echo -n .
$cli set option.emacsmode_controlPNBF_ex 1
/bin/echo -n .
$cli set option.emacsmode_controlLeftbracket 1
/bin/echo -n .
$cli set option.emacsmode_controlK 1
/bin/echo -n .
$cli set general.dont_remap_internal 1
/bin/echo -n .
$cli set remap.controlJ2enter 1
/bin/echo -n .
$cli set option.emacsmode_controlD 1
/bin/echo -n .
$cli set remap.jis_unify_eisuu_to_kana 1
/bin/echo -n .
$cli set repeat.initial_wait 150
/bin/echo -n .
/bin/echo
