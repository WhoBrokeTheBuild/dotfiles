#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e "$HOME/.vimrc" ]; then 
    unlink $HOME/.vimrc
fi
ln -s $DIR/.vimrc $HOME/.vimrc

mkdir -p $HOME/.vim
if [ -e "$HOME/.vim/colors" ]; then
    unlink $HOME/.vim/colors
fi
ln -s $DIR/colors $HOME/.vim/colors
