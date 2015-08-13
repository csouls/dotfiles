let g:sass_compile_auto = 1
let g:sass_compile_cdloop = 5
let g:sass_compile_cssdir = ['css', 'stylesheet']
let g:sass_compile_file = ['scss', 'sass']
let g:sass_started_dirs = []

au BufNewFile,BufRead *\.css set tabstop=4 shiftwidth=4
au BufNewFile,BufRead *\.scss set tabstop=4 shiftwidth=4
autocmd FileType less,sass setlocal tabstop=4 shiftwidth=4 sts=4 et
