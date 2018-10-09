if &compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!

  " Golang autocmd
  autocmd FileType go nmap <Leader>b <Plug>(go-build)
  autocmd FileType go nmap <Leader>r <Plug>(go-run)
  autocmd FileType go nmap <Leader>t <Plug>(go-test)
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
  autocmd FileType go nmap <Leader>i <Plug>(go-info)
  autocmd BufNewFile, BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2
  autocmd FileType go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd FileType go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd FileType go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd FileType go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

  " html
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

" dein settings {{{
" dein自体の自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim ' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" もし、未インストールものものがあったらインストール
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" プラグイン読み込み＆キャッシュ作成
let g:rc_dir = expand('~/.config/nvim')
let s:toml_file = g:rc_dir . '/dein.toml'
let s:toml_lazy_file = g:rc_dir . '/dein_lazy.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file, {'lazy': 0})
  call dein#load_toml(s:toml_lazy_file, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install(['vimproc.vim'])
  call dein#install(['vimproc.vim'])
endif

" 不足プラグインの自動インストール if dein#check_install()
if dein#check_install()
  call dein#install()
endif
" }}}

" deoplete.nvim settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH . '/bin/gocode'
let g:deoplete#sources#go#package_dot = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#pointer = 1
let g:deoplete#sources#go#auto_goos = 1
set completeopt+=noselect

" neosnippet settings
let g:neosnippet#enable_completed_snippet = 1

" ale settings
let g:ale_lint_on_text = 0
let g:ale_linters = {
  \'javascript': ['prettier'],
  \'ruby': ['rubocop'],
  \'python': ['autopep8', 'isort'],
  \'markdown': [
  \   {buffer, lines -> {'command': 'textlint -c ~/.config/textlintrc -o /dev/null --fix --no-color --quiet %t', 'read_temporary_file': 1}}
  \  ],
  \ }
let g:ale_fix_on_save = 1

" NERDTree settings
" show invisible files as a default
let g:indent_guides_guide_size=1

" Golang Settings
set autowrite
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_containers = 1
let g:go_highlight_generate_tags = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_guru_scope = ["..."]
let g:go_guru_scope = ["github.com/...", "golang.org/x/tools"]
let g:go_play_open_browser = 1
let g:go_play_open_browser_command = "chrome"

" tigris settings
let g:dein#plugin.build = './install.sh'
let g:tigris#enabled = 1
let g:tigris#on_the_fly_enabled = 1
let g:tigris#delay = 300

" vim-tags settings
let g:vim_tags_project_tags = "/usr/local/bin/ctags -f tags -R . 2>/dev/null"
let g:vim_tags_gems_tags_command = "/usr/local/bin/ctags -R -f Gemfile.lock.tags `bundle show --paths` 2>/dev/null"
set tags+=.tags,Gemfile.lock.tags

" colorscheme
let g:rehash256 = 1
colorscheme lucius
let g:lucius_contrast = 'low'
let g:lucius_style = 'dark'
let g:lucius_contrast_bg = 'high'

" Key Bindings
inoremap <silent> jj <ESC>
inoremap <silent> <C-j> j
inoremap <silent> kk <ESC>
inoremap <silent> <C-k> k
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap " ""<Left>
inoremap ' ''<Left>
nnoremap <Esc><Esc> :noh<CR>
nnoremap <silent><C-e> :NERDTreeToggle<Cr>
nnoremap <silent><C-i> :Files<CR>
nnoremap <silent><C-r> :Rg<CR>
nnoremap <silent><C-c> :vsplit<CR><C-w><C-w>
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
imap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : deoplete#mappings#manual_complete()
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"

" move end of screen last line when tap v twice
vnoremap v $h
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)

" jump to corresponding pair when tap TAB
nnoremap &lt;Tab&gt; %
vnoremap &lt;Tab&gt; %

" let sets
let g:python3_host_prog = $PYENV_ROOT . '/shims/python3'
let g:python_host_prog = $PYENV_ROOT . '/shims/python'
let mapleader = ','

" global settings
filetype plugin indent on
syntax enable
set background=dark
filetype indent on
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis

" view
set number
set relativenumber
highlight LineNr ctermfg=darkyellow
set statusline+=%{fugitive#statusline()}
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set t_Co=256
set encoding=utf-8
set display=lastline

" editor
set showmatch matchtime=1
set ruler
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
set visualbell t_vb=

" cmdline
set cmdheight=2
set laststatus=2
set showcmd

