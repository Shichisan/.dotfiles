# default editor
set -U EDITOR nvim
set -U VISUAL nvim

# env initializations
status --is-interactive; and source (nodenv init - |psub)
status --is-interactive; and source (goenv init -|psub)
status --is-interactive; and source (rbenv init -|psub)
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
status is-interactive; and pyenv init --path | source

# go path
set -x GOPATH $HOME/dev
set -x PATH $GOPATH/bin $PATH
set -x GOENV_DISABLE_GOPATH 1

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# imagemagick
set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths

# mysql
set -g fish_user_paths "/usr/local/opt/mysql@5.6/bin" $fish_user_paths

# strap env
set -x STRAP_DEVELOPER_ENV orca-dev-taiga

# nerd fonts
set -g theme_nerd_fonts yes
