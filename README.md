## Installation
```bash
cd ~/dotfiles
git pull
./install
```
## Install vim
Do NOT install vim with **conda python**
```bash
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr
cd src && make && sudo make install
```
vim is installed in /usr/bin, current version is 8.0

### YouCompleteMe
This plugin is compatitable with conda python. Vim and Youcompleteme can have different python build

### tmux and vim mapping
1. system preference -> keyboard -> modify keys -> choose keyboard -> option == option
2. change vim mapping based on [this](http://stackoverflow.com/questions/7501092/can-i-map-alt-key-in-vim)
