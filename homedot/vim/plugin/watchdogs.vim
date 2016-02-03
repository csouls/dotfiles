if !exists("g:quickrun_config")
  let g:quickrun_config = {}
endif

let g:watchdogs_check_BufWritePost_enable = 1
let g:watchdogs_check_CursorHold_enable = 1

let g:quickrun_config["watchdogs_checker/_"] = {
      \   "hook/close_quickfix/enable_exit" : 1,
      \   "runner" : "vimproc",
      \   "runner/vimproc/updatetime" : 10,
      \   "outputter/quickfix/open_cmd" : "",
      \   "hook/qfstatusline_update/enable_exit" : 1,
      \   "hook/qfstatusline_update/priority_exit" : 4,
      \ }

let g:quickrun_config["watchdogs_checker/flymake"] = {
      \   "command"   : expand('~/.vim/bundle/vim-erlang-compiler/compiler/erlang_check.erl'),
      \   "exec"      : "%c %o %s:p ",
      \ }

let g:quickrun_config["erlang/watchdogs_checker"] = {
      \   "type" : "watchdogs_checker/flymake",
      \ }

let g:quickrun_config["ruby/watchdogs_checker"] = {
      \   "type" : "watchdogs_checker/rubocop",
      \ }
