if &encoding !=# 'utf-8'
  set encoding=utf-8
endif
scriptencoding utf-8

language message C

filetype off
filetype plugin indent off

let g:python_host_prog = expand($PYENV_ROOT . '/shims/python2')
let g:python3_host_prog = expand($PYENV_ROOT . '/shims/python3')

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
