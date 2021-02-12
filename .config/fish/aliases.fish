# linux alias
alias ll 'ls -l'
alias la 'ls -al'

# tmux
alias t "tmux -2"
alias ta "tmux a"
alias ts "tmux new -s"
# docker
alias d "docker"
alias dc "docker-compose"
# neovim
alias n "nvim"
# npm, yarn
alias ys 'yarn start'
alias ysd 'yarn start:developer'
alias ydd 'yarn deploy:developer'
alias yl 'yarn lint'
alias ylf 'yarn lint --fix'
alias yt 'yarn test'
# Ruby, Rails
alias b "bundle exec"
alias rs "bundle exec rails server -b '0.0.0.0'"
alias rc "bundle exec rails console"
alias rcs "bundle exec rails console -s"
alias brs 'bundle exec rspec'
alias kiq "bundle exec sidekiq -C config/sidekiq.yml"
alias cop "bundle exec rubocop"
alias copf "bundle exec rubocop -a"
# Git
alias g 'git'
# -n 行数表示, -I バイナリファイル無視, svn関係のファイルを無視
alias grep "grep --color -n -I --exclude='*.svn-*' --exclude='entries' --exclude='*/cache/*'"
# ghq
alias ghg "ghq get"
