function __ghq_cd_repository -d "Change local repository directory"
  ghq list --full-path | fzf --reverse | read -l repo_path
  cd $repo_path
end
alias ghf __ghq_cd_repository

function __ghq_peco_src -d "Change local repository by peco"
  ghq list --full-path | peco --query "$LBUFFER"
end
bind \ck __ghq_peco_src
