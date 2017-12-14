#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

unlink $HOME/.zshrc
ln -s $DIR/.zshrc $HOME/.zshrc
