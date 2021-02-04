" emmet
let g:user_emmet_leader_key='<C-t>'

" ripgrep
nnoremap <silent><C-k> :Rg<CR>

" defx.nvim
nnoremap <silent><C-e> :Defx<CR>

" fzf
nnoremap <silent><C-i> :FZF --reverse <CR>

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" matchup
let g:loaded_matchit = 1

" vim-lsp
function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> <C-]> <plug>(lsp-definition)
  nmap <buffer> <leader>re <plug>(lsp-rename)
  nmap <buffer> <leader>d <plug>(lsp-type-definition)
  nmap <buffer> <leader>r <plug>(lsp-references)
  nmap <buffer> <leader>i <plug>(lsp-implementation)
  inoremap <expr> <cr> pumvisible() ? "\<c-y>\<cr>" : "\<cr>"
endfunction

augroup lsp_install
  au!
augroup END

let g:lsp_settings_servers_dir = expand('~/dev/src/vim-lsp')

set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()
" If you would like to disable folding globally, you can add this to your configuration:
let g:lsp_fold_enabled = 0

let g:lsp_sign_enabled = 1
let g:lsp_signs_error = {'text': '✗'}
" highlight references
let g:lsp_highlight_references_enabled = 1
highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green
" If you debugging vim-lsp remove comment out below settings
let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/.vim-lsp-debug.log')
" for asyncomplete.vim log
let g:asyncomplete_log_file = expand('~/.asyncomplete.log')
set completeopt+=preview

" indent
autocmd FileType coffee setlocal sw=2 sts=2 ts=2 et

" winresizer
let g:winresizer_start_key = "<C-Y>"

