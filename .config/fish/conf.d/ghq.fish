function __ghq_cd_repository -d "Change local repository directory"
  ghq list --full-path | fzf --reverse | read -l repo_path
  cd $repo_path
end
bind \ck __ghq_cd_repository
