# tmux
alias t "tmux"
alias ta "tmux a"
alias ts "tmux new -s"
# npm, yarn
alias ns 'npm start'
alias ys 'yarn start'
alias yl 'yarn lint'
alias ylf 'yarn lint --fix'
alias yt 'yarn test'
# Ruby, Rails
alias b "bundle exec"
alias rs "bundle exec rails server -b '0.0.0.0'"
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

alias gf 'git fetch'
alias gfa 'git fetch --all --prune'
alias gfo 'git fetch origin'

alias gpl 'git pull --prune'
alias gps 'git push'
alias gpsf 'git push -f'
alias gl 'git pull'
alias glpp 'git pull --prune'
alias glgg 'git log --graph'
alias glgga 'git log --graph --decorate --all'
alias glo 'git log --oneline --decorate'
alias glog 'git log --oneline --decorate --graph'
alias grh 'git reset HEAD'
alias grhh 'git reset HEAD --hard'
alias gss 'git status -s'
alias gst 'git status'
alias gsta 'git stash save'
alias gstc 'git stash clear'
alias gstl 'git stash list'
alias gstp 'git stash pop'
alias gsts 'git stash show --text'
alias grbi 'git rebase -i'
alias grbc 'git rebase --continue'
alias grba 'git rebase --abort'
alias grbs 'git rebase --skip'
alias grbo 'git rebase origin/master'
# -n 行数表示, -I バイナリファイル無視, svn関係のファイルを無視
alias grep "grep --color -n -I --exclude='*.svn-*' --exclude='entries' --exclude='*/cache/*'"
# cd alias of personal
alias cdnv 'cd ~/.config/nvim'
alias cdf 'cd ~/.config/fish'
# ghq
alias ghg "ghq get"
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
alias ref 'cp ~/dev/src/github.com/Shichisan/dotfiles/.config/fish/*.fish ~/.config/fish/'
alias refd 'cp ~/dev/src/github.com/Shichisan/dotfiles/.config/fish/conf.d/*.fish ~/.config/fish/conf.d/'
alias retm 'cp ~/dev/src/github.com/Shichisan/dotfiles/.tmux.conf ~'
alias retmlinux 'cp ~/dev/src/github.com/Shichisan/dotfiles/.tmux.linux.conf ~'
alias retmosx 'cp ~/dev/src/github.com/Shichisan/dotfiles/.tmux.osx.conf ~'
alias regt 'cp ~/dev/src/github.com/Shichisan/dotfiles/.gitconfig ~'
alias cpall 'cpnv; and cpf; and cpfd; and cptm; and cptmlinux; and cptmosx; and cpgt'
alias reall 'renv; and ref; and refd; and retm; and cptmlinux; and cptmosx; and regt'
