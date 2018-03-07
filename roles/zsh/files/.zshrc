export ZSH=~/.oh-my-zsh

ZSH_THEME="steeef"

HYPHEN_INSENSITIVE="true"

plugins=(git svn systemd archlinux dnf docker github sudo cp)

command_exists () {
    type "$1" &> /dev/null ;
}

export PATH="$PATH:$HOME/.local/bin:$HOME/bin:$HOME/go/bin:/opt/go/bin"

source $ZSH/oh-my-zsh.sh

if [ -e "$HOME/.zshrc.local" ]; then
    source $HOME/.zshrc.local
fi

export EDITOR='vim'

if command_exists clang; then
    export CC=clang
    export CXX=clang++
fi

if command_exists thefuck; then
	eval $(thefuck --alias)
fi

alias dnf='sudo dnf'
alias apt='sudo apt'
alias pacman='sudo pacman'
alias vi='vim'
