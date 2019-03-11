if &encoding !=# 'utf-8'
  set encoding=utf-8
endif
scriptencoding utf-8

language message C

filetype off
filetype plugin indent off

let g:python_host_prog = expand($PYENV_ROOT . '/shims/python2')
let g:python3_host_prog = expand($PYENV_ROOT . '/shims/python')
let g:ruby_host_prog = expand($RBENV_ROOT . '/shims/ruby')

let g:mapleader = '\<Space>'
let g:maplocalleader = ','

nnoremap "\<Space>" <Nop>
nnoremap ',' <Nop>

set background=dark
augroup MyColor
  autocmd!
  autocmd VimEnter * nested colorscheme iceberg
augroup END

augroup MyAutoCmd
  autocmd!
  " Golang autocmd
  autocmd FileType go nmap <Leader>b <Plug>(go-build)
  autocmd FileType go nmap <Leader>r <Plug>(go-run)
  autocmd FileType go nmap <Leader>t <Plug>(go-test)
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
  autocmd FileType go nmap <Leader>i <Plug>(go-info)
  autocmd BufNewFile, BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2
augroup END

augroup DeleteSpace
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//ge
augroup END

augroup MyDefxCmd
  autocmd FileType defx call s:defx_my_settings()
	function! s:defx_my_settings() abort
	  nnoremap <silent><buffer><expr> <CR> defx#do_action('open')
	  nnoremap <silent><buffer><expr> c defx#do_action('copy')
	  nnoremap <silent><buffer><expr> m defx#do_action('move')
	  nnoremap <silent><buffer><expr> p defx#do_action('paste')
	  nnoremap <silent><buffer><expr> l defx#do_action('open')
	  nnoremap <silent><buffer><expr> E defx#do_action('open', 'vsplit')
	  nnoremap <silent><buffer><expr> P defx#do_action('open', 'pedit')
	  nnoremap <silent><buffer><expr> o defx#do_action('open_or_close_tree')
	  nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
	  nnoremap <silent><buffer><expr> N defx#do_action('new_file')
	  nnoremap <silent><buffer><expr> M defx#do_action('new_multiple_files')
	  nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns', 'mark:filename:type:size:time')
	  nnoremap <silent><buffer><expr> S defx#do_action('toggle_sort', 'time')
	  nnoremap <silent><buffer><expr> d defx#do_action('remove')
	  nnoremap <silent><buffer><expr> r defx#do_action('rename')
	  nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')
	  nnoremap <silent><buffer><expr> x defx#do_action('execute_system')
	  nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
	  nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
	  nnoremap <silent><buffer><expr> ; defx#do_action('repeat')
	  nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
	  nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
	  nnoremap <silent><buffer><expr> q defx#do_action('quit')
	  nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
	  nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')
	  nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
	  nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
	  nnoremap <silent><buffer><expr> <C-l> defx#do_action('redraw')
	  nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
	  nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')
	endfunction
augroup END
