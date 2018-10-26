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

