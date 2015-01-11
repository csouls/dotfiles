if neobundle#is_installed('neocomplete')
    " neocomplete用設定
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_ignore_case = 1
    let g:neocomplete#enable_smart_case = 1
    let g:neocomplete#enable_fuzzy_completion = 0

    if !exists('g:neocomplete#keyword_patterns')
      let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns._ = '\h\w*'

    inoremap <expr><C-n>  pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>"
    inoremap <expr><C-e>  pumvisible() ? neocomplete#close_popup() : "<End>"
    inoremap <expr><C-c>  neocomplete#cancel_popup()
    inoremap <expr><C-u>  neocomplete#undo_completion()
    inoremap <expr><C-h>  neocomplete#smart_close_popup()."\<C-h>"

    let g:neocomplete#sources#dictionary#dictionaries = {
          \ 'ruby' : $HOME . '/.vim/dict/rubymotion.dict',
          \ }
elseif neobundle#is_installed('neocomplcache')
    " neocomplcache用設定
    let g:neocomplcache_enable_at_startup = 1
"    let g:neocomplcache_enable_ignore_case = 1
"    let g:neocomplcache_enable_smart_case = 1
"    if !exists('g:neocomplcache_keyword_patterns')
"        let g:neocomplcache_keyword_patterns = {}
"    endif
"    let g:neocomplcache_keyword_patterns._ = '\h\w*'
"    let g:neocomplcache_enable_camel_case_completion = 0
"    let g:neocomplcache_enable_underbar_completion = 1
endif

let g:neocomplcache_dictionary_filetype_lists = { 'ruby' : $HOME . '/.vim/dict/rubymotion.dict' }

" neocomplete.vim + clang_complete
let g:clang_user_options = '-std=c++11' " command option

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.objcpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

" clang_complete では自動補完を行わない用に設定
let g:clang_complete_auto = 0
let g:clang_auto_select = 0

