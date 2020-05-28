let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

nnoremap "\<Space>" <Nop>

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

" easymotion
nmap <Leader>s <Plug>(easymotion-s2)
xmap <Leader>s <Plug>(easymotion-s2)

" mapping leader
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>xa :xa<CR>
nnoremap <Leader>qa :qa<CR>

" vim-lsp keymappings
nnoremap <Leader>] :LspDefinition<CR>
nnoremap <Leader>p] :LspPeekDefinition<CR>
nnoremap <Leader>h :LspHover<CR>
nnoremap <Leader>re :LspRename<CR>
nnoremap <Leader>st :LspStatus<CR>
nnoremap <Leader>ref :LspReferences<CR>
nnoremap <Leader>n :LspNextReference<CR>
nnoremap <Leader>t :LspTypeDefinition<CR>
nnoremap <Leader>pt :LspPeekTypeDefinition<CR>
