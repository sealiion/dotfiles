syntax on
autocmd ColorScheme * highlight Comment ctermfg=100
"autocmd ColorScheme * highlight Normal ctermfg=none
"autocmd ColorScheme * highlight LineNr ctermfg=none
colorscheme molokai

set enc=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac

" タブ、行末スペースなどを可視化した時に表示する記号
set listchars=eol:↲,tab:>\-,trail:-,extends:>,precedes:<,nbsp:%
set list

" 全角スペースの背景を白に変更
autocmd Colorscheme * highlight FullWidthSpace ctermbg=white
autocmd VimEnter * match FullWidthSpace /　/

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set t_Co=256

set cursorline
set number
highlight LineNr ctermfg=cyan
"set title

set incsearch
set smartcase
set hlsearch
set showmatch

set backspace=indent,eol,start
inoremap <C-a> <Esc>^i
inoremap <C-e> <Esc>$a
noremap <C-a> <Esc>^i
noremap <C-e> <Esc>$a

set noswapfile
set autoread

set wildmenu
set showcmd

nnoremap sp :set paste<CR>
nnoremap sl :set list<CR>
nnoremap np :set nopaste<CR>
nnoremap nl :set nolist<CR>
nnoremap sn :set number<CR>
nnoremap nnum :set nonumber<CR>: set nolist<CR>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/root/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/root/.cache/dein')
  call dein#begin('/root/.cache/dein')

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:rc_dir    = expand('~/.cache/dein')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Let dein manage dein
  " Required:
  call dein#add('/root/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------
