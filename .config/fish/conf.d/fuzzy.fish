function __fuzzy_checkout_branch -d "Fuzzy change git branch"
  git branch | fzf --reverse | xargs git switch
end
alias fb __fuzzy_checkout_branch

function __fuzzy_delete_branch -d "Fuzzy delete git branch"
  git branch | fzf --reverse | xargs git branch -D
end
alias fbd __fuzzy_delete_branch
