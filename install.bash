#!/usr/bin/env bash

ln -s -f $(pwd)/dot_files/.editorconfig ~/.editorconfig
ln -s -f $(pwd)/dot_files/.gitconfig ~/.gitconfig
#ln -s -f $(pwd)/dot_files/.vimrc ~/.vimrc
ln -s -f $(pwd)/dot_files/.zshrc ~/.zshrc

# get github 'hub' autocompletions
mkdir -p ~/.zsh/completions
curl https://raw.githubusercontent.com/github/hub/master/etc/hub.zsh_completion -o ~/.zsh/completions/_hub
