# default editor
set -U EDITOR nvim
# tmux
set -x TERM screen-256color
# neovim python
set NVIM_PYTHON_LOG_FILE /tmp/log
set NVIM_PYTHON_LOG_LEVEL DEBUG
set NVIM_RUBY_LOG_FILE /tmp/log
set NVIM_RUBY_LOG_LEVEL DEBUG
# anyenv paths
set PATH $HOME/.anyenv/bin $PATH
. (anyenv init - | psub)
for D in rbenv pyenv nodenv goenv
  set -x PATH $HOME/.anyenv/envs/$D/shims $PATH
end
set -x GOPATH $HOME/dev
set -x PATH $GOPATH/bin $PATH
set -x FZF_DEFAULT_COMMAND 'fd --type f'
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

