inoremap <silent> jj <ESC>
inoremap <silent> <C-j> j
inoremap <silent> kk <ESC>
inoremap <silent> <C-k> k
nnoremap <Esc><Esc> :noh<CR>
nnoremap <silent><C-s> :vsplit<CR><C-w><C-w>
nnoremap <silent><C-c> :split<CR><C-w><C-w>
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction
