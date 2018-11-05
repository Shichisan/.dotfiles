" colorscheme
filetype plugin indent on
syntax enable
colorscheme lucius
let g:lucius_contrast = 'low'
let g:lucius_style = 'dark'
let g:lucius_contrast_bg = 'high'
let g:rehash256 = 1

" let sets
let g:python3_host_prog = $PYENV_ROOT . '/shims/python3'
let g:python_host_prog = $PYENV_ROOT . '/shims/python'
let mapleader = ','

" global settings
set background=dark
filetype indent on
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis

" view
set relativenumber
highlight LineNr ctermfg=darkyellow
set statusline+=%{fugitive#statusline()}
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set t_Co=256
set encoding=utf-8
set display=lastline

" editor
set showmatch matchtime=1
set termguicolors
set list
" setting for invisible character
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮
set wildmenu
" display as a longest list
set wildmode=list:full
" flap line
set wrap
set title
set sm
set ai

" cursor
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,]
set scrolloff=8
set sidescrolloff=16
set ambiwidth=double

" when file closing
set confirm
set hidden
set autoread
set nobackup
" not generating swap file
set noswapfile
" delete backup after save file
set nowritebackup
" using OS clipboard
set clipboard=unnamed
" automatically reload
set autoread

" search / replace
set incsearch
set hlsearch
set ignorecase
set smartcase
set wrapscan
set gdefault

" tab / indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" error
set noerrorbells
set novisualbell

" cmdline
set cmdheight=2
set laststatus=2
set showcmd

