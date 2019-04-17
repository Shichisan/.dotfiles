# tmux
alias t "tmux"
alias tl "tmux ls"
alias ta "tmux a"
alias ts "tmux new -s"
# npm, yarn
alias ys 'yarn start'
alias yl 'yarn lint'
alias ylf 'yarn lint --fix'
alias yt 'yarn test'
# Ruby, Rails
alias b "bundle exec"
alias rs "bundle exec rails server"
alias rc "bundle exec rails console"
alias brs 'bundle exec rspec'
alias sk "bundle exec sidekiq -C config/sidekiq.yml"
alias cop "bundle exec rubocop"
alias copf "bundle exec rubocop -a"
# Git
alias g 'git'
alias ga 'git add'
alias gaa 'git add --all'
alias gb 'git branch'
alias gba 'git branch -a'
alias gbd 'git branch -D'
alias gc 'git commit -v'
alias gc! 'git commit -v --amend'
alias gco 'git checkout'
alias gcb 'git checkout -b'
alias gcm 'git checkout master'
alias gcd 'git checkout develop'
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
# cd alias of personal
alias cdnv 'cd ~/.config/nvim'
alias cdf 'cd ~/.config/fish'
# ghq
alias ghg "ghq get"
alias ghls "ghq list"
alias ghl "ghq look"
# cp each setting
alias cpnv 'cp ~/.config/nvim/* ~/dev/src/github.com/Shichisan/dotfiles/.config/nvim/'
alias cpf  'cp ~/.config/fish/*.fish ~/dev/src/github.com/Shichisan/dotfiles/.config/fish/'
alias cpfd 'cp ~/.config/fish/conf.d/*.fish ~/dev/src/github.com/Shichisan/dotfiles/.config/fish/conf.d/'
alias cptm 'cp ~/.tmux.conf ~/dev/src/github.com/Shichisan/dotfiles/'
alias cptmlinux 'cp ~/.tmux.linux.conf ~/dev/src/github.com/Shichisan/dotfiles/'
alias cptmosx 'cp ~/.tmux.osx.conf ~/dev/src/github.com/Shichisan/dotfiles/'
alias cpgt 'cp ~/.gitconfig ~/dev/src/github.com/Shichisan/dotfiles/'
# return dotfiles
alias renv 'cp ~/dev/src/github.com/Shichisan/dotfiles/.config/nvim/* ~/.config/nvim/'
alias ref 'cp ~/dev/src/github.com/Shichisan/dotfiles/.config/fish/*.fish ~/.config/fish/conf.d/'
alias refd 'cp ~/dev/src/github.com/Shichisan/dotfiles/fish/conf.d/* ~/.config/fish/conf.d/*.fish'
alias retm 'cp ~/dev/src/github.com/Shichisan/dotfiles/.tmux.conf ~'
alias retmlinux 'cp ~/dev/src/github.com/Shichisan/dotfiles/.tmux.linux.conf ~'
alias retmosx 'cp ~/dev/src/github.com/Shichisan/dotfiles/.tmux.osx.conf ~'
alias regt 'cp ~/dev/src/github.com/Shichisan/dotfiles/.gitconfig ~'
alias cpall 'cpnv; and cpf; and cpfd; and cptm; and cptmlinux; and cptmosx; and cpgt'
alias reall 'renv; and ref; and refd; and retm; and cptmlinux; and cptmosx; and regt'
