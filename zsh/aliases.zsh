alias ai='sudo apt-get install'
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias be='bundle exec'
alias beg='bundle exec guard'
alias cdr='cd $(git rev-parse --show-toplevel)'
alias ff='firefox'
alias fn='find . -name'
alias g='hub'
alias gg='git grep'
alias ggi='git grep -i'
alias git='hub'
alias gm='gmake'
alias gmc='gmake clean -j'
alias gmr='gmake clean -j && gmake -j'
alias gmt='gmake test -j'
alias gvir='gvim --remote-send ":tabe<CR>" && gvim --remote'
alias hd='~/bin/hex_decimal.sh'
alias hdevtools='stack exec --no-ghc-package-path hdevtools --'
alias k='kitchen'
alias livestreamer='livestreamer --default-stream best'
alias ll='ls -al'
alias lower="tr '[:upper:]' '[:lower:]'"
alias ls='ls --color'
alias mkcd='. ~/bin/make_dir_and_cd.sh'
alias myip='curl cmyip.com 2>/dev/null | grep -o "My IP Address is [0-9.]*"'
alias rfwifi='nmcli r wifi off && nmcli r wifi on'
alias s='stack'
alias sb='stack build'
alias sbcl='rlwrap sbcl'
alias sc='stack clean'
alias scheme='rlwrap scheme'
alias se='stack exec'
alias si='stack install'
alias sqlite3='rlwrap sqlite3'
alias st='stack test'
alias upper="tr '[:lower:]' '[:upper:]'"
alias uu='sudo apt-get update && sudo apt-get upgrade'
alias wfc='weather -f NYC'

[ -f ~/.zsh_local/aliases_local.zsh ] && source ~/.zsh_local/aliases_local.zsh
