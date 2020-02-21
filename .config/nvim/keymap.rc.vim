inoremap <silent> jj <ESC>
inoremap <silent> <C-j> j
inoremap <silent> kk <ESC>
inoremap <silent> <C-k> k
nnoremap <Esc><Esc> :noh<CR>
nnoremap <silent><C-s> :vs<CR><C-w><C-w>
nnoremap <silent><C-c> :sp<CR><C-w><C-w>
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

nnoremap g<C-a> ggVG<CR>

" mapping leader
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>xa :xa<CR>
nnoremap <Leader>qa :qa<CR>

" vim-lsp keymappings
nnoremap <Leader>] :LspDefinition<CR>
nnoremap <Leader>h :LspHover<CR>
