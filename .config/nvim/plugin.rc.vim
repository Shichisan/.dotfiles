" emmet
let g:user_emmet_leader_key='<C-t>'
" ripgrep
nnoremap <silent><C-k> :Rg<CR>
" defx.nvim
nnoremap <silent><C-e> :Defx<CR>
" fzf
nnoremap <silent><C-i> :FZF --reverse<CR>
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
" lightline
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

let g:lightline.tab = {
      \ 'active': [ 'tabnum', 'filename', 'modified' ],
      \ 'inactive': [ 'tabnum', 'filename', 'modified' ]
      \ }

" matchup
let g:loaded_matchit = 1
" vue
let g:vue_pre_processors = ['pug', 'scss']
" vim-lsp
function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> <f2> <plug>(lsp-rename)
endfunction

augroup lsp_install
  au!
  " call s:on_lsp_buffer_enabled only for languages that has the server registered.
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" If you have used private PC
" let g:lsp_settings_servers_dir='/Users/macintosh/dev/src/vim-lsp'

" If you have used company PC
let g:lsp_settings_servers_dir='/Users/emp-mac-taiga/dev/src/vim-lsp'

set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()
" If you would like to disable folding globally, you can add this to your configuration:
" let g:lsp_fold_enabled = 0

let g:lsp_diagnostics_enabled = 0
let g:lsp_sign_enabled = 1
let g:lsp_signs_error = {'text': '✗'}
" highlight references
let g:lsp_highlight_references_enabled = 1
highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green
" If you debugging vim-lsp remove comment out below settings
let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp-debug.log')
" for asyncomplete.vim log
let g:asyncomplete_log_file = expand('~/asyncomplete.log')
