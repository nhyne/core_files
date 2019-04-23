# make sure we've cloned the .tmux repo
git submodule update

# link ~/.tmux to submodlue .tmux.conf
ln -s -f $(pwd)/.tmux/.tmux.conf ~/.tmux.conf
ln -s -f $(pwd)/dot_files/.tmux.conf.local ~/.tmux.conf.local

ln -s -f $(pwd)/dot_files/.editorconfig ~/.editorconfig
ln -s -f $(pwd)/dot_files/.gitconfig ~/.gitconfig
ln -s -f $(pwd)/dot_files/.vimrc ~/.vimrc
ln -s -f $(pwd)/dot_files/.zshrc ~/.zshrc
