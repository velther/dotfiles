autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

autoload -Uz promptinit
promptinit

autoload -Uz compinit
compinit

. ~/dotfiles/modules/aliases
. ~/dotfiles/modules/env
. ~/dotfiles/modules/zconfig
