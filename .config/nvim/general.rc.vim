" colorscheme
colorscheme onedark

" file settings
set fileencodings=utf-8,sjis
set fileformats=unix,dos,mac

" view
set number " 行番号を表示
set relativenumber " 現在位置からの相対番号を表示
set statusline+=%{fugitive#statusline()}
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
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
set noswapfile " not generating swap file
set nowritebackup " delete backup after save file
set clipboard=unnamed " using OS clipboard
set autoread

" search / replace
set incsearch
set hlsearch
set ignorecase
set smartcase
set wrapscan
set gdefault
set history=100

" tab / indent
set tabstop=2 " タブを何文字の空白に変換するか
set softtabstop=2
set shiftwidth=2 " 自動インデント時に入力する空白の数
set expandtab " タブ入力を空白に変換
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

