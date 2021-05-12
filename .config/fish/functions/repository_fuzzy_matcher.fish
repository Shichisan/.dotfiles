function repository_fuzzy_matcher -d "Fuzzy matcher for moving directory"
  ghq list | fzf --reverse --height=100% | read -l selected
  ghq root | read -l ghq_root
  [ -n "$selected" ]; and cd "$ghq_root/$selected"
  echo "$selected "
  commandline -f repaint
end
