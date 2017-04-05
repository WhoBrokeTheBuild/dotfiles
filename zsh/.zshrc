# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

ZSH_THEME="steeef"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


plugins=(git svn systemd archlinux dnf docker github sudo cp)

command_exists () {
    type "$1" &> /dev/null ;
}

# User configuration

export PATH="/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:~/go/bin:~/.local/bin:~/bin:~/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

if [ -e "$HOME/.zshrc.local" ]; then
    source $HOME/.zshrc.local
fi

export EDITOR='vim'

if command_exists clang; then
    export CC=clang
    export CXX=clang++
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

if command_exists thefuck; then
	eval $(thefuck --alias)
fi

alias dnf='sudo dnf'
alias apt='sudo apt'
alias pacman='sudo pacman'
alias vi='vim'

[[ -s "/home/slanewalsh/.gvm/scripts/gvm" ]] && source "/home/slanewalsh/.gvm/scripts/gvm"
