if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

source ~/.kubectl
#source https://raw.githubusercontent.com/hazelj/settings/master/.bashrc

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#alias vim="/usr/local/Cellar/vim/7.4.1864/bin/vim"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias ga="git add ."
alias gc="git commit"
alias gp="git push"
alias gd="git diff"
alias gs="git status"
