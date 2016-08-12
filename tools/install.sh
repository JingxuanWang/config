#!/bin/bash

DIR=$HOME/config

if [ -d "$DIR" ]; then
	echo "$DIR already exists, exit";
	#exit;
fi

git clone git@github.com:JingxuanWang/config.git $DIR

# setup bash config
echo "Linking $DIR/bash/bashrc"
echo "source $DIR/bash/bashrc" >> ~/.bashrc

echo "Linking $DIR/bash/bash_profile"
echo "source $DIR/bash/bash_profile" >> ~/.bash_profile

# setup zsh config
echo "Linking $DIR/zsh/zshrc"
echo "source $DIR/zsh/zshrc" >> ~/.zshrc

# setup vim config
echo "Installing ~/.vim/bundle/Vundle.vim"
mkdir -p ~/.vim/bundle
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "Linking $DIR/vim/vimrc"
echo "source $DIR/vim/vimrc" >> ~/.vimrc

echo "Initializing git global config"
bash $DIR/git/git_global_config.sh

echo "Done"
