"--- NeoBundle
set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
NeoBundle 'Shougo/vimproc'

" My Bundles here:
NeoBundle 'L9'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'thinca/vim-quickrun.git'
NeoBundle 'itspriddle/vim-marked'
NeoBundle 'tpope/vim-markdown'
"NeoBundle 'tpope/vim-bundler'
NeoBundle 'h1mesuke/vim-alignta'
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'taichouchou2/vim-javascript' " jQuery syntax追加
NeoBundle 'AtsushiM/sass-compile.vim'
NeoBundle 'vim-coffee-script'
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'ngmy/vim-rubocop'
NeoBundle 'tpope/vim-rbenv'
" vim-scripts repos
NeoBundle 'FuzzyFinder'
NeoBundle 'rails.vim'
" Non github repos
NeoBundle 'git://git.wincent.com/command-t.git'
" Non git repos
NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'

NeoBundle 'daisuzu/facebook.vim'

filetype plugin indent on     " Required!

"-- Installation check.
NeoBundleCheck

"--- neocomplcache
let g:NeoComplCache_EnableAtStartup = 1
let g:NeoComplCache_SmartCase = 1
let g:NeoComplCache_EnableCamelCaseCompletion = 1
let g:NeoComplCache_EnableUnderbarCompletion = 1
let g:NeoComplCache_MinSyntaxLength = 3

"--- Ruby/Railsのomni補完
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
let g:rails_level = 4

"--- sass
let g:sass_compile_auto = 1
let g:sass_compile_cdloop = 5
let g:sass_compile_cssdir = ['css', 'stylesheet']
let g:sass_compile_file = ['scss', 'sass']
let g:sass_started_dirs = []

autocmd FileType less,sass  setlocal sw=2 sts=2 ts=2 et
"au! BufWritePost * SassCompile

"--- marked
let g:quickrun_config = {}
let g:quickrun_config.markdown = {
      \ 'outputter' : 'null',
      \ 'command'   : 'open',
      \ 'cmdopt'    : '-a',
      \ 'args'      : 'Marked',
      \ 'exec'      : '%c %o %a %s',
      \ }

"--- Alignta
xnoremap al :Alignta<Space>

"--- Json整形
command! -nargs=? Jq call s:Jq(<f-args>)
function! s:Jq(...)
    if 0 == a:0
        let l:arg = "."
    else
        let l:arg = a:1
    endif
    execute "%! jq \"" . l:arg . "\""
endfunction

command! Jf :execute '%!python -m json.tool'

command! Jfu :execute '%!python -m json.tool'
  \ | :execute '%!python -c "import re,sys;chr=__builtins__.__dict__.get(\"unichr\", chr);sys.stdout.write(re.sub(r\"\\u[0-9a-f]{4}\", lambda x: chr(int(\"0x\" + x.group(0)[2:], 16)), sys.stdin.read()))"'
  \ | :%s/ \+$//ge
  \ | :set ft=javascript
  \ | :1

"--- vim一般設定
set autoindent
set ambiwidth=double
set backupdir=$HOME/.vimbackup
set directory=$HOME/.vimbackup
set browsedir=buffer
set nocompatible
set expandtab
set hidden
set incsearch
set list
set listchars=tab:>\ ,extends:<,trail:-
set number
set showmatch
set smartcase
set smartindent
set tabstop=2
set smarttab
set shiftwidth=2
set whichwrap=b,s,h,l,<,>,[,]

nnoremap <C-g> 1<C-g>

syntax on
filetype on
filetype indent on
filetype plugin on

"-- 入力モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

"-- Rails関連ファイルでタブ幅を変更
au BufNewFile,BufRead *.rhtml set nowrap tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.rb set nowrap tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.erb set nowrap tabstop=2 shiftwidth=2

"-- タブ幅4のファイル郡
au BufNewFile,BufRead *.md set nowrap tabstop=4 shiftwidth=4

"-- 開いたファイルと同じディレクトリをカレントディレクトリにする
au BufEnter * execute ":lcd " . expand("%:p:h")

"-- 表示行単位で移動
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

"-- ;uでEscape
inoremap ;u <ESC>

