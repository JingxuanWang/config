#!/bin/bash

DIR=$HOME/config

if [ -d "$DIR" ]; then
	echo "$DIR already exists, exit";
	exit;
fi

git clone git@github.com:JingxuanWang/config.git $DIR

# setup bash config
echo "Linking $DIR/bashrc"
echo "source $DIR/bashrc" >> ~/.bashrc

echo "Linking $DIR/bash_profile"
echo "source $DIR/bash_profile" >> ~/.bash_profile

# setup zsh config
echo "Linking $DIR/zshrc"
echo "source $DIR/zshrc" >> ~/.zshrc

# setup vim config
echo "Installing ~/.vim/bundle/Vundle.vim"
mkdir -p ~/.vim/bundle
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "Linking $DIR/vimrc"
echo "source $DIR/vimrc" >> ~/.vimrc

echo "Initializing git global config"
bash $DIR/tools/git_global_config.sh

echo "Done"
