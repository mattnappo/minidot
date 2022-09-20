echo "installing vimrc"
cp .vimrc $HOME/.vimrc

echo "installing vim plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dir https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "installing tmux"
cp .tmux.conf $HOME/.tmux.conf
tmux source $HOME/.tmux.conf

echo "installing bashrc"
cat .bashrc >> $HOME/.bashrc
source $HOME/.bashrc

echo "done!"
echo "to finish: run :PlugInstall in vim"
