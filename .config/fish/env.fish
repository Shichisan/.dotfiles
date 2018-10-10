# エディタ
set -x EDITOR nvim

# tmux
set -x TERM xterm-256color

# anyenv
set -g PATH $HOME/.anyenv/bin $PATH
. (anyenv init - | psub)

set -l env_paths `ls $HOME/.anyenv/envs`
for D in $env_paths
  set -x PATH $HOME/.anyenv/$D/shims $PATH
end

# golang path
set -x GOPATH $HOME/dev
set -x PATH $PATH $GOPATH/bin

# imagemacick path
set -g fish_user_paths /usr/local/opt/imagemagick@6/bin $fish_user_paths

# neovim python
set -x NVIM_PYTHON_LOG_FILE /tmp/log
set -x NVIM_PYTHON_LOG_LEVEL DEBUG
set -x NVIM_RUBY_LOG_FILE /tmp/log
set -x NVIM_RUBY_LOG_LEVEL DEBUG

set -U fish_user_paths (echo $fish_user_paths | tr ' ' '\n' | sort -u)

