# エディタ
set -x EDITOR nvim

# tmux
set -x TERM xterm-256color

# rbenv
set -x RBENV_ROOT $HOME/.rbenv
set -gx PATH $RBENV_ROOT $PATH
. (rbenv init - | psub)

# pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT $PATH
. (pyenv init - | psub)

# golang path
set -x GOPATH $HOME/dev
set -x PATH $PATH $GOPATH/bin

# neovim python
set -x NVIM_PYTHON_LOG_FILE /tmp/log
set -x NVIM_PYTHON_LOG_LEVEL DEBUG
set -x NVIM_RUBY_LOG_FILE /tmp/log
set -x NVIM_RUBY_LOG_LEVEL DEBUG

# nodebrew path
set -x PATH $HOME/.nodebrew/current/bin $PATH

# mysql path
set -g fish_user_paths "/usr/local/opt/mysql@5.6/bin" $fish_user_paths

# imagemagick path
set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths

