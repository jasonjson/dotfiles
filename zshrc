# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
source ~/.zsh/aliases.sh
source ~/.zsh/settings.sh
DEFAULT_USER='yuanyuanliu'

function clone {
    url=$1;
    reponame=$(echo $url | awk -F/ '{print $NF}' | sed -e 's/.git$//');
    git clone $url $reponame;
    cd $reponame;
    cp ~/dotfiles/git/gitignore .gitignore;
    cp ~/dotfiles/git/pre-commit-config.yaml .pre-commit-config.yaml;
}

# User configuration
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"
    zgen oh-my-zsh
     #plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    #zgen oh-my-zsh plugins/python
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/browse-commit
    zgen load zsh-users/alias-tips
    zgen load Tarrasch/zsh-autoenv
    zgen load zsh-users/zsh-autosuggestions

    # bulk load
    zgen loadall <<EOPLUGINS
        zsh-users/zsh-history-substring-search
EOPLUGINS
    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen oh-my-zsh themes/agnoster

    # save all to init script
    zgen save
fi
