# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
export PATH=$HOME/.bin:$HOME/node_modules/.bin:$PATH

alias g='git status'
alias ga='git add'
alias gci='git commit'
alias gl='git pull'
alias glr='git pull --rebase'
alias gs='git push'
alias gco='git checkout'
alias gls='git ls-files'
alias gsu='git submodule update'

export PS1='\[$(tput setaf 4)\]\w`__git_ps1 "\[$(tput setaf 9)\](\[$(tput setaf 1)\]%s\[$(tput setaf 9)\])\[$(tput setaf 4)\]"` \$ \[$(tput setaf 9)\]'
