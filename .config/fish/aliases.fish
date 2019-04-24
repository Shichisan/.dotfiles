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
