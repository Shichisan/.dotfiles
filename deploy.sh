#!/bin/bash

## Definition directory
rootdir=$(dirname $(cd $(dirname $0) && pwd))
sourcedir=$rootdir/dotfiles
ignoredir='./.git|./itermcolors'

create_missing_directory() {
  ## Make Directories
  for dir in $(find $sourcedir -name $ignoredir -prune -o -type d -print | grep -v "$sourcedir\$"); do
    dir=$(echo $dir | sed "s#^$sourcedir#$HOME#")
    echo "Check $dir"
    if [[ -d $dir ]]; then
      echo "Nothing to do."
    else
      echo "Make Directory $dir"
      mkdir -p $dir
    fi
  done
}

create_dotfiles_symlink() {
  for src in $(find $sourcedir -type d | egrep -v "^($ignoredir)"); do
    dotfile=$(echo $src | sed "s#$sourcedir#$HOME#")
    echo "Check $dotfile"

    if [[ -L $dotfile ]]; then
      echo "Nothing to do."
      continue
    fi

    if [[ ! -e $dotfile ]] && [[ $dotfile != 'README.md' ]] && [[ $dotfile != 'deploy.sh' ]]; then
      echo "Make symlink $src"
      ln -s $src $dotfile
    fi
  done
}

# deploy dotfiles
deploy_dotfiles() {
  create_missing_directory
  create_dotfiles_symlink
}

deploy_dotfiles
