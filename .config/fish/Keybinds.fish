function fish_user_key_bindings
  # fzf
  bind \ct '__fzf_find_file'
  bind \cr '__fzf_reverse_isearch'
  bind \cx '__fzf_find_and_execute'
  bind \ce '__fzf_cd'
  bind \cE '__fzf_cd_with_hidden'

  bind \cG '__ghq_crtl_g'
end
