. ~/.config/fish/env.fish
. ~/.config/fish/aliases.fish
. ~/.config/fish/Keybinds.fish

function cd
  builtin cd $argv
  ll
end

function history
  builtin history --show-time='%Y/%m/%d %H:%M:%S ' | sort
end

set fish_plugins theme peco
set fish_theme idan

set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths
