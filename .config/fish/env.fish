# default editor
set -U EDITOR nvim
set -U VISUAL nvim

# anyenv paths
set -x PATH $HOME/.anyenv/bin $PATH
source (anyenv init - | psub)

for D in rbenv pyenv nodenv goenv
  set -x PATH $HOME/.anyenv/envs/$D/shims $PATH
end
set -x GOPATH $HOME/dev
set -x PATH $GOPATH/bin $PATH
set -x GOENV_DISABLE_GOPATH 1

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# imagemagick
set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths

# mysql
set -g fish_user_paths "/usr/local/opt/mysql@5.6/bin" $fish_user_paths

# flutter
set -x PATH $HOME/dev/src/flutter/bin $PATH

# awscli
set -x PATH $HOME/.local/bin $PATH

# starship
starship init fish | source

# strap env
set -x STRAP_DEVELOPER_ENV orca-dev-taiga

