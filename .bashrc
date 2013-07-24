# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export PATH=$HOME/.bin:$HOME/node_modules/.bin:$PATH

# Git specific
alias g='git status'
alias ga='git add'
alias gam='git ls-files -m | xargs git add'
alias gau='git ls-files -o --exclude-standard | xargs git add'
alias grm='git ls-files -d | xargs git rm'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git pull'
alias glr='git pull --rebase'
alias gs='git push'
alias gc='git commit'
alias gco='git checkout'
alias gls='git ls-files'
alias gsu='git submodule update'

# Daria specific
function make_mail_static() {
	if [[ -z $@ ]]; then
		themes=blue
	else
		themes=$@
	fi
	
	make THEMES="$themes" PROJECTS="boot jane mail"
}

function make_lang() {
	if [[ -z $@ ]]; then
		langs=ru
	else
		langs=$@
	fi
	
	make LANGS="$langs"
}

function daria_make() {
	dir=${PWD##*/}
	dir_full=${PWD}
	parent_dir=$(basename $(dirname $dir_full))

	if [ $dir == 'neo2' ] || [ $dir == 'mail' ]; then
		make_lang "$@"
	elif [[ $dir == 'static' && ($parent_dir == 'neo2' || $parent_dir == 'mail') ]]; then
		make_mail_static "$@"
	else
		make $@
	fi
}


alias m=daria_make
alias mst=make_mail_static
alias ml=make_lang


export PS1='\[$(tput setaf 4)\]\w`__git_ps1 "\[$(tput setaf 9)\](\[$(tput setaf 1)\]%s\[$(tput setaf 9)\])\[$(tput setaf 4)\]"` \$ \[$(tput setaf 9)\]'
