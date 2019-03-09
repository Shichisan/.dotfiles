" colorscheme
colorscheme iceberg

" file settings
set fileencodings=utf-8,sjis
set fileformats=unix,dos,mac

" view
set number
set relativenumber
highlight LineNr ctermfg=darkyellow
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
set history=100

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

