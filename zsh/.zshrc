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


plugins=(git dnf github sudo)

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

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

if command_exists clang; then
    export CC=clang
    export CXX=clang++
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

eval $(thefuck --alias)
alias dnf='sudo dnf'

[[ -s "/home/slanewalsh/.gvm/scripts/gvm" ]] && source "/home/slanewalsh/.gvm/scripts/gvm"
