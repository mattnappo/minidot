#!/bin/bash

echo "configuring tmux"
cp .tmux.conf $HOME/.tmux.conf
tmux source $HOME/.tmux.conf

echo "configuring zsh"
cp $HOME/.zshrc $HOME/.zshrc_backup_
cp .zshrc $HOME/.zshrc
. $HOME/.zshrc

echo "configuring bash"
cat .bashrc >> $HOME/.bashrc

echo "configuring nvim"
cp init.vim $HOME/.config/nvim/init.vim

echo "installing nvim plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "configuring ssh"
cat ssh_config >> $HOME/.ssh/config

echo "done!"
echo "to finish:\n\trun :PlugInstall in nvim\n\tinstall ssh keys"
