if &compatible
  set nocompatible
endif

let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim ' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

let &runtimepath = s:dein_repo_dir .",". &runtimepath
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

if dein#check_install()
  call dein#install()
endif

function s:source_rc(rc_file_name)
  let rc_file = expand(g:rc_dir . '/' . a:rc_file_name)
  if filereadable(rc_file)
    execute 'source' rc_file
  endif
endfunction

let g:python_host_prog = expand($PYENV_ROOT . '/shims/python2')
let g:python3_host_prog = expand($PYENV_ROOT . '/shims/python')
let g:ruby_host_prog = expand($RBENV_ROOT . '/shims/ruby')

call s:source_rc('general.rc.vim')
call s:source_rc('base.rc.vim')
call s:source_rc('plugin.rc.vim')
call s:source_rc('keymap.rc.vim')

filetype plugin indent on
syntax enable

