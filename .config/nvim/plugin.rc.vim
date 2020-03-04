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

" defx appearance
" call defx#custom#option('_', {
"   \ 'winwidth': 30,
"   \ 'split': 'vertical',
"   \ 'direction': 'topleft',
"   \ 'show_ignore_files': 0,
"   \ 'buffer_name': 'defxplorer',
"   \ 'toggle': 1,
"   \ 'resume': 1,
"   \ })

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

let g:lsp_settings_servers_dir = expand('~/dev/src/vim-lsp')

set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()
" If you would like to disable folding globally, you can add this to your configuration:
let g:lsp_fold_enabled = 0

let g:lsp_diagnostics_enabled = 0
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

" JavaScript, Typescript
if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'javascript support using typescript-language-server',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
    \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
    \ 'whitelist': ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx'],
    \ })
endif

" ruby
if executable('solargraph')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
  endif

" Typescript autocomplete
call asyncomplete#register_source(asyncomplete#sources#tscompletejob#get_source_options({
  \ 'name': 'tscompletejob',
  \ 'whitelist': ['typescript'],
  \ 'completor': function('asyncomplete#sources#tscompletejob#completor'),
  \ }))

" go autocomplete
call asyncomplete#register_source(asyncomplete#sources#gocode#get_source_options({
  \ 'name': 'gocode',
  \ 'whitelist': ['go'],
  \ 'completor': function('asyncomplete#sources#gocode#completor'),
  \ 'config': {
  \   'gocode_path': expand('~/go/1.13.8/bin/gocode')
  \ },
  \ }))
