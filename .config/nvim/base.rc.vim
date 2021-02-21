if &encoding !=# 'utf-8'
  set encoding=utf-8
endif
scriptencoding utf-8

language message C

filetype off
filetype plugin indent off

set helplang=ja

" undo永続化
if has('persistent_undo')
  let undo_path = expand('~/.config/nvim/undo')
  exe 'set undodir=' . undo_path
  set undofile
endif

set background=dark
augroup MyColor
  autocmd!
  autocmd VimEnter * nested colorscheme iceberg
augroup END
