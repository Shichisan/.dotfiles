source ~/.config/fish/env.fish
source ~/.config/fish/aliases.fish
source ~/.config/fish/Keybinds.fish

function cd
  builtin cd $argv
  ll
end

function history
  builtin history --show-time='%Y/%m/%d %H:%M:%S ' | sort
end

set fish_plugins theme peco
set fish_theme idan

