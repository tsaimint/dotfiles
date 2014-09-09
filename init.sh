#!/bin/sh

DIR=$(dirname $0)
echo $DIR
ln -s $DIR/eclimrc ~/.eclimrc
ln -s $DIR/gvimrc ~/.gvimrc
ln -s $DIR/tmux.conf ~/.tmux.conf
ln -s $DIR/vim ~/.vim
ln -s $DIR/vimrc ~/.vimrc
ln -s $DIR/bash_aliases ~/.bash_aliases
