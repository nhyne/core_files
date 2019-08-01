# make sure we've cloned the .tmux repo
git submodule update

# link ~/.tmux to submodlue .tmux.conf
ln -s -f $(pwd)/.tmux/.tmux.conf ~/.tmux.conf
ln -s -f $(pwd)/dot_files/.tmux.conf.local ~/.tmux.conf.local

ln -s -f $(pwd)/dot_files/.editorconfig ~/.editorconfig
ln -s -f $(pwd)/dot_files/.gitconfig ~/.gitconfig
ln -s -f $(pwd)/dot_files/.vimrc ~/.vimrc
ln -s -f $(pwd)/dot_files/.zshrc ~/.zshrc

# get github 'hub' autocompletions
mkdir -p ~/.zsh/completions
curl https://raw.githubusercontent.com/github/hub/master/etc/hub.zsh_completion -o ~/.zsh/completions/_hub

# install git-delete-squashed
npm install --global git-delete-squashed

# install kubectl-repl
curl -o /usr/local/bin/kubectl-repl https://github.com/Mikulas/kubectl-repl/releases/download/1.7/kubectl-repl-darwin-386-1.7
chmod +x /usr/local/bin/kubectl-repl
