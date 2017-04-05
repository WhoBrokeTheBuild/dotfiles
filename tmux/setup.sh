#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

unlink $HOME/.tmux.conf
ln -s $DIR/.tmux.conf $HOME/.tmux.conf
