" tigris settings
let g:tigris#enabled = 1
let g:tigris#on_the_fly_enabled = 1
let g:tigris#delay = 300
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
" rubocop
let g:vimrubocop_config = '~/dev/src/github.com/goodpatch/prott-api/.rubocop.yml'
let g:vimrubocop_keymap = 0
nmap <C-b> :RuboCop --auto-correct<CR>
" vim hanami
let g:hanami_open_strategy = 'vsplit'
