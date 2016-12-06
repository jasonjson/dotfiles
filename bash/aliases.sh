# Put shell aliases here

alias lm='ls -lt | more'
alias ll='ls -al'
alias ls='ls --color'
#alias tm='tmux -2'
alias tm='tmux'

# cd to the root of your git repo
alias cdr='cd $(git rev-parse --show-toplevel)'
alias c='clear'
alias h='history'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias v='vim -p'
alias vi='vim -p'
#alias vp='vi -p'
alias arc='/home/phab/bin/arc'

#------make files-----
alias p='plink -d stage'
alias m='metamkmk -t other -f'
alias cln='rm -rf *.tsk *.o 00* *.linux'

#----git related----
alias gs='git status'
alias gp='git push'
alias gom='git push origin master'
alias gc='git commit'
alias ga='git add'
alias gd='git diff'
alias gb='git branch'
alias gl='git log'
alias gsb='git show-branch'
alias gco='git checkout'

#-------tar----
alias tarc='tar czvf 1.tar.gz'
alias tarx='tar xzvf 1.tar.gz'