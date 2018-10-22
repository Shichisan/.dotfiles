" deoplete.nvim settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH . '/bin/gocode'
let g:deoplete#sources#go#package_dot = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#pointer = 1
let g:deoplete#sources#go#auto_goos = 1
set completeopt+=noselect

" neosnippet settings
let g:neosnippet#enable_completed_snippet = 1

" ale settings
let g:ale_lint_on_text = 0
let g:ale_linters = {
  \'javascript': ['prettier'],
  \'ruby': ['rubocop'],
  \'python': ['autopep8', 'isort'],
  \'markdown': [
  \   {buffer, lines -> {'command': 'textlint -c ~/.config/textlintrc -o /dev/null --fix --no-color --quiet %t', 'read_temporary_file': 1}}
  \  ],
  \ }
let g:ale_fix_on_save = 1

" NERDTree settings
" show invisible files as a default
let g:indent_guides_guide_size=1

" Golang Settings
set autowrite
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_containers = 1
let g:go_highlight_generate_tags = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_guru_scope = ["..."]
let g:go_guru_scope = ["github.com/...", "golang.org/x/tools"]
let g:go_play_open_browser = 1
let g:go_play_open_browser_command = "chrome"

" tigris settings
let g:dein#plugin.build = './install.sh'
let g:tigris#enabled = 1
let g:tigris#on_the_fly_enabled = 1
let g:tigris#delay = 300

" vim-tags settings
let g:vim_tags_project_tags = "/usr/local/bin/ctags -f tags -R . 2>/dev/null"
let g:vim_tags_gems_tags_command = "/usr/local/bin/ctags -R -f Gemfile.lock.tags `bundle show --paths` 2>/dev/null"
set tags+=.tags,Gemfile.lock.tags

