"------------------------------------
"" sass
"------------------------------------
if executable('sass')
  let g:sass_compile_auto = 1
  let g:sass_compile_cdloop = 5
  let g:sass_compile_cssdir = ['css', 'stylesheet']
  let g:sass_compile_file = ['scss', 'sass']
  let g:sass_started_dirs = []
endif

au BufNewFile,BufRead *\.css set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *\.scss set tabstop=2 shiftwidth=2
autocmd FileType less,sass setlocal sw=2 sts=2 ts=2 et
