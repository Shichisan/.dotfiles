" Key Bindings
inoremap <silent> jj <ESC>
inoremap <silent> <C-j> j
inoremap <silent> kk <ESC>
inoremap <silent> <C-k> k
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap " ""<Left>
inoremap ' ''<Left>
nnoremap <Esc><Esc> :noh<CR>
nnoremap <silent><C-e> :NERDTreeToggle<Cr>
nnoremap <silent><C-i> :Files<CR>
nnoremap <silent><C-r> :Rg<CR>
nnoremap <silent><C-c> :vsplit<CR><C-w><C-w>
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
imap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : deoplete#mappings#manual_complete()
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"

" move end of screen last line when tap v twice
vnoremap v $h
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)

" jump to corresponding pair when tap TAB
nnoremap &lt;Tab&gt; %
vnoremap &lt;Tab&gt; %

