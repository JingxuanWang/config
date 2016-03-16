#!/bin/bash

DIR=$HOME/config
DIR=`echo $DIR | sed "s:\/:\\\\/:g"`

# clean bash config
sed -i '' "s:source $DIR/bashrc::g" ~/.bashrc
sed -i '' "s:source $DIR/bash_profile::g" ~/.bash_profile

# clean zsh config
sed -i '' "s:source $DIR/zshrc::g" ~/.zshrc

# clean vim config
sed -i '' "s:source $DIR/vimrc::g" ~/.vimrc
