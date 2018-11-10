" NERDTree settings
let NERDTreeShowHidden=1

" vim_tags settings
let g:vim_tags_project_tags = "/usr/local/bin/ctags -f tags -R . 2>/dev/null"
let g:vim_tags_gems_tags_command = "/usr/local/bin/ctags -R -f Gemfile.lock.tags `bundle show --paths` 2>/dev/null"
set tags+=.tags,Gemfile.lock.tags

" tigris settings
let g:tigris#enabled = 1
let g:tigris#on_the_fly_enabled = 1
let g:tigris#delay = 300

