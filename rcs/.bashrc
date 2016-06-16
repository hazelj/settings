if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

source ~/.kubectl
#source https://raw.githubusercontent.com/hazelj/settings/master/.bashrc

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#make the history unique
export HISTCONTROL=ignoredups

#alias vim="/usr/local/Cellar/vim/7.4.1864/bin/vim"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim -O"

alias grep="grep --color -E "
alias scr="vim /tmp/scratch"

alias ga="git add ."
alias gc="git commit"
alias gp="git push"
alias gd="git diff"
alias gs="git status"
alias gf="git fetch"
alias gb="git branch"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export KUBE_EDITOR="vim"

eval "$(docker-machine env)"

#PS1="[\$(kubectl config current-context)] $ "
#[[ "$(kubectl config current-context)" == "g5-prod" ]] && export PS1="[ \[\e[0;31m\]G5-PROD\[\e[0m\] ] $ " || export PS1="[ \$(kubectl config current-context) ] $ "
PS1='$(if [[ "$(kubectl config current-context)" == "g5-prod" ]]; then  echo "[ \[\e[0;31m\]G5-PROD\[\e[0m\] ] \W $ "; else echo "[ \[\e[0;32m\]$(kubectl config current-context)\[\e[0m\] ] \W $ "; fi)'
