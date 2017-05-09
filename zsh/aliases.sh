# Put shell aliases here
alias lm='ls -lt | more'
alias ll='ls -al'
alias ls='ls -G'
#alias tm='tmux -2'
alias tm='tmux'
alias jk='jekyll'

#conda virtualenv
alias sa='source activate'
alias sd='source deactivate'

# cd to the root of your git repo
alias cdr='cd $(git rev-parse --show-toplevel)'
alias c='clear'
alias h='history'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias v='vim -p'
alias py='python3'
alias pip='/usr/local/bin/pip3'
alias vi='vim -p'
alias newp='/Users/yuanyuanliu/Documents/projects/blog/_utils/generate_post.py'
alias pr='cd ~/Documents/projects'

#----git related----
alias gs='git status'
alias gp='git push'
alias gom='git push origin master'
alias gac='git add . && git commit -m '
alias gd='git diff'
alias gb='git branch'
alias gl='git log'
alias gsb='git show-branch'
alias gco='git checkout'

#-------tar----
alias tarc='tar czvf 1.tar.gz'
alias tarx='tar xzvf 1.tar.gz'

#---leetcode--
alias lc='leetcode'
lcs() {leetcode show "$1" -g -x -l python}
