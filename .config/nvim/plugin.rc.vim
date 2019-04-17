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
nnoremap <silent><C-i> :Files<CR>
" rubocop
let g:vimrubocop_config = '~/dev/src/github.com/goodpatch/prott-api/.rubocop.yml'
let g:vimrubocop_keymap = 0
nmap <C-b> :RuboCop --auto-correct<CR>
