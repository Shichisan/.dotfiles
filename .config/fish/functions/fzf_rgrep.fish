function fzf_rgrep -d "fuzzy search by ripgrep"
  set INITIAL_QUERY ""
  set RG_PREFIX "rg --column --line-number --no-heading --color=always --smart-case "
  set FZF_DEFAULT_COMMAND "$RG_PREFIX '$INITIAL_QUERY'"
  fzf --bind "change:reload:$RG_PREFIX {q} || true" \
      --ansi --disabled --query "$INITIAL_QUERY"
end
