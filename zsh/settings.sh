## ============================================================================
##                           Environment Variables
## ============================================================================
export GTEST_COLOR=yes
export EDITOR=vi

# Reduce delay to 0.1 seconds for switching to normal mode with ESC
export KEYTIMEOUT=1

PATH=$HOME/bin
PATH=$PATH:/Users/yuanyuanliu/anaconda3/bin
PATH=$PATH:/opt/bb/bin
PATH=$PATH:/bb/bin
PATH=$PATH:/opt/swt/bin
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:/bin
PATH=$PATH:/sbin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/sbin

# You may need to manually set your language environment
export LANG=en_US.UTF-8
#export LANG=en_US.UTF

export HTTP{,S}_PROXY=""
export http{,s}_proxy=""
export no_proxy=""

## ============================================================================
##                                 Settings
## ============================================================================
# Unmap ctrl-s as "stop flow"
#stty stop undef

# Vim mode.  Remove to default to emacs style keys.
#set -o vi

umask 022
# Update winsize after each command for better line-wrapping
#shopt -s checkwinsize
#git checkout auto complete script
zstyle ':completion:*:*:git:*' script ~/dotfiles/git-completion.zsh
## ============================================================================
##                                  Prompt
## ============================================================================