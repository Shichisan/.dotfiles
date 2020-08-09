" colorscheme
colorscheme iceberg

" 文字化けを防ぐためにいくつかの文字コードの設定を行う
scriptencoding utf-8

" file settings
set fileencodings=utf-8,sjis
set fileformats=unix,dos,mac

" view
set number " 行番号を表示
set relativenumber " 現在位置からの相対番号を表示
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
" コマンドライン補完
set wildmenu
" display as a longest list
set wildmode=list:full
" flap line
set wrap
set title
set sm
set ai

" tab
" タブを常に表示
set showtabline=2

" cursor
set cursorline
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
" 文字入力をするたびに、その時点でパターンマッチしたテキストをハイライト
set incsearch
" 検索結果をハイライト表示
set hlsearch
" 検索時大文字小文字を区別しない
set ignorecase
" 検索時、大文字入力をした場合大文字小文字を区別する
set smartcase
set wrapscan
set gdefault
set history=100

" tab / indent
set tabstop=2 " タブを何文字のスペースに変換するか
set softtabstop=2
set expandtab " タブ入力をスペースに変換
set smarttab
set autoindent
" インデントを考慮して改行
set smartindent
set shiftwidth=2 " 自動インデント時に入力する空白の数

" error
set noerrorbells
set novisualbell

" cmdline
set cmdheight=2
" ステータスラインを表示
set laststatus=2
set showcmd

" 矩形選択
" テキストではないところも選択可能にする
set virtualedit=block
