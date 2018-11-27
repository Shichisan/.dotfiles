# vim
alias n 'nvim'

# tmux
alias t "tmux"
alias tl "tmux ls"
alias tlc "tmux lsc"
alias ta "tmux a"
alias tns "tmux new -s"
alias tkss "tmux kill-session"
alias tkse "tmux kill-server"

# JavaScript
alias ns 'npm start'
alias gs "grunt server"

# Ruby, Rails
alias b "bundle exec"
alias rs "bundle exec rails server"
alias rc "bundle exec rails console"
alias rcs 'bundle exec rails console --sandbox'
alias brs 'bundle exec rspec'
alias kiq "bundle exec sidekiq -C config/sidekiq.yml"
alias cop "bundle exec rubocop -a"

# Golang Development aliases
alias gog 'go get'
alias gogu 'go get -u'
alias gob 'go build'
alias gobo 'go build -o'
alias gor 'go run'

# Git
alias g 'git'

alias ga 'git add'
alias gaa 'git add --all'

alias gb 'git branch'
alias gba 'git branch -a'
alias gbd 'git branch -d'

alias gc 'git commit -v'
alias gc! 'git commit -v --amend'

alias gcb 'git checkout -b'
alias gcm 'git checkout master'
alias gcd 'git checkout develop'
alias gcmsg 'git commit -m'
alias gco 'git checkout'

alias gcp 'git cherry-pick'
alias gcpa 'git cherry-pick --abort'
alias gcpc 'git cherry-pick --continue'

alias gd 'git diff'
alias gdca 'git diff --cached'
alias gdct 'git describe --tags `git rev-list --tags --max-count=1`'
alias gdt 'git diff-tree --no-commit-id --name-only -r'
alias gdw 'git diff --word-diff'

alias gf 'git fetch'
alias gfa 'git fetch --all --prune'
alias gfo 'git fetch origin'

alias ggpull 'git pull origin (git_current_branch)'
alias ggpush 'git push origin (git_current_branch)'

alias gl 'git pull'
alias glpp 'git pull --prune'
alias glg 'git log --stat'
alias glgp 'git log --stat -p'
alias glgg 'git log --graph'
alias glgga 'git log --graph --decorate --all'
alias glgm 'git log --graph --max-count=10'
alias glo 'git log --oneline --decorate'
alias glol "git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola "git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias glog 'git log --oneline --decorate --graph'
alias gloga 'git log --oneline --decorate --graph --all'
alias glp "_git_log_prettily"
alias glon 'git log --oneline --decorate -n'

alias grh 'git reset HEAD'
alias grhh 'git reset HEAD --hard'

alias gss 'git status -s'
alias gst 'git status'
alias gsta 'git stash save'
alias gstaa 'git stash apply'
alias gstc 'git stash clear'
alias gstd 'git stash drop'
alias gstl 'git stash list'
alias gstp 'git stash pop'
alias gsts 'git stash show --text'

alias grbi 'git rebase -i'
alias grbc 'git rebase --continue'
alias grba 'git rebase --abort'
alias grbs 'git rebase --skip'
alias grbo 'git rebase origin/master'

function git_current_branch
  set -l ref (git symbolic-ref --quiet HEAD 2> /dev/null)
  set -l ret $status
  if [ $ret != 0 ]
    [ $ret == 128 ]; and return  # no git repo.
    set -l ref (git rev-parse --short HEAD 2> /dev/null); or return
  end
  string replace 'refs/heads/' "" $ref
end

# -n 行数表示, -I バイナリファイル無視, svn関係のファイルを無視
alias grep "grep --color -n -I --exclude='*.svn-*' --exclude='entries' --exclude='*/cache/*'"

# change directory

# variables
set -l source_path '~/dev/src/github.com'
set -l self_source_path '~/dev/src/github.com/Shichisan'
set -l gp_source_path '~/dev/src/github.com/goodpatch'

# settings and config
alias cdnv 'cd; and cd ~/.config/nvim'
alias cdf 'cd; and cd ~/.config/fish'
alias cdot 'cd; and cd ~/dev/src/github.com/Shichisan/dotfiles/'

# Prott
alias cdsr "cd $self_source_path/self_resources"
alias cds "cd $gp_source_path/prott-streaming"
alias cdan "cd $gp_source_path/prott-ansible"
alias cda "cd $gp_source_path/prott-api"
alias cdb "cd $gp_source_path/prott-blog"
alias cdc "cd $gp_source_path/prott-cms"
alias cdl "cd $gp_source_path/prott-landing"
alias cdp "cd $gp_source_path/prott"
alias cdw "cd $gp_source_path/prott-webapp"
alias cdt "cd $gp_source_path/prott-terraform"
alias cdi "cd $gp_source_path/prott-infra"

# cp each setting
alias cpnv 'cp ~/.config/nvim/* ~/dev/src/github.com/Shichisan/dotfiles/.config/nvim/'
alias cpf  'cp ~/.config/fish/*.fish ~/dev/src/github.com/Shichisan/dotfiles/.config/fish/'
alias cptm 'cp ~/.tmux.conf ~/dev/src/github.com/Shichisan/dotfiles/; and cp ~/.tmux.linux.conf ~/dev/src/github.com/Shichisan/dotfiles/; and cp ~/.tmux.osx.conf ~/dev/src/github.com/Shichisan/dotfiles/'
alias cpgt 'cp ~/.gitconfig ~/dev/src/github.com/Shichisan/dotfiles/'

# return dotfiles
alias renv 'mv ~/dev/src/github.com/Shichisan/dotfiles/.config/nvim/* ~/.config/nvim/'
alias ref 'mv ~/dev/src/github.com/Shichisan/dotfiles/.config/fish/*.fish ~/.config/fish/'
alias retm 'mv ~/dev/src/github.com/Shichisan/dotfiles/.tmux.conf ~; and mv ~/dev/src/github.com/Shichisan/dotfiles/.tmux.linux.conf ~; and mv ~/dev/src/github.com/Shichisan/dotfiles/.tmux.osx.conf ~'
alias regt 'mv ~/dev/src/github.com/Shichisan/dotfiles/.gitconfig ~'

alias cpall 'cpnv; and cpf; and cptm; and cpgt'
alias reall 'renv; and ref; and retm; and regt'

