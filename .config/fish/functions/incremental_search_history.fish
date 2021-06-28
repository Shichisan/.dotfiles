function incremental_search_history -d "Incremental Search History"
  history | fzf --reverse | cut -b 21- | read -l selected
  commandline $selected
end
