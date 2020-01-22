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

" 拡張子ごとにタブ数を指定
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set t_Co=256
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.sql setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.css setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.htm setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

" スクロール関連
"set cursorline 重くなる
set scrolloff=5
set scrollopt=ver,hor,jump
set scrollbind

set number
set guioptions+=b

highlight LineNr ctermfg=cyan
set title

set incsearch
set smartcase
set hlsearch
set showmatch

set noswapfile
set autoread

set wildmenu
set showcmd

set backspace=indent,eol,start

" マウス
set mouse=a
set ttymouse=xterm2

" バインド
 noremap <C-a> <Esc>^i
inoremap <C-a> <Esc>^i
 noremap <C-e> <Esc>$a
inoremap <C-e> <Esc>$a
 noremap <C-z> <Esc>u
inoremap <C-z> <Esc>u
 noremap <C-ScrollWheelUp> <Esc>zh
inoremap <C-ScrollWheelUp> <Esc>zh
 noremap <C-ScrollWheelDown> <Esc>zl
inoremap <C-ScrollWheelDown> <Esc>zl

 noremap <C-S-Left> <Esc><C-w>100<<CR>
inoremap <C-S-Left> <Esc><C-w>100<<CR>
 noremap <C-S-Right> <Esc><C-w>100><CR>
inoremap <C-S-Right> <Esc><C-w>100><CR>
 noremap <C-S-Up> <Esc><C-w>==<CR>
inoremap <C-S-Up> <Esc><C-w>==<CR>

nnoremap sp :set paste<CR>
nnoremap <Tab>w :set nonumber<CR>: set nolist<CR>
nnoremap <Tab>e :set number<CR>: set list<CR>
nnoremap <Tab>q :q! <CR>
nnoremap ap :set paste<CR>ggdGi
cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>
cnoremap q! qa!<CR>

""dein Scripts----------------------------------------------------------
"if &compatible
"  set nocompatible               " Be iMproved
"endif
"
"" Required:
"set runtimepath+=/root/.cache/dein/repos/github.com/Shougo/dein.vim
"
"" Required:
"if dein#load_state('/root/.cache/dein')
"  call dein#begin('/root/.cache/dein')
"
"  " プラグインリストを収めた TOML ファイル
"  " 予め TOML ファイル（後述）を用意しておく
"  let g:rc_dir    = expand('~/.cache/dein')
"  let s:toml      = g:rc_dir . '/dein.toml'
"  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
"
"  " TOML を読み込み、キャッシュしておく
"  call dein#load_toml(s:toml,      {'lazy': 0})
"  call dein#load_toml(s:lazy_toml, {'lazy': 1})
"
"  " Let dein manage dein
"  " Required:
"  call dein#add('/root/.cache/dein/repos/github.com/Shougo/dein.vim')
"
"  " Add or remove your plugins here:
"  call dein#add('Shougo/neosnippet.vim')
"  call dein#add('Shougo/neosnippet-snippets')
"
"  " You can specify revision/branch/tag.
"  "call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })
"
"  " Required:
"  call dein#end()
"  call dein#save_state()
"endif
"
"" Required:
"filetype plugin indent on
"syntax enable
"
"" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif
""End dein Scripts------------------------------------------------------
