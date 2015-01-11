let g:quickrun_config = {}

let g:neorspec_command = "Dispatch spring rspec {spec}"
nmap <Leader>c :<C-U>RSpecCurrent<CR>

let s:is_mac = has('mac') || system('uname') =~? '^darwin'
if s:is_mac
  let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
  if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
  endif
endif
