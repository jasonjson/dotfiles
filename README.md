## Installation
```bash
cd ~/dotfiles
git pull
./install
```

## Install python
1. Download [python source code](https://www.python.org/downloads/)
2. `./configure --prefix=/usr`
3. set up alias

## Install vim
Do **NOT** install vim with *conda python*, remove *conda python* from your path
```bash
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config \
            --enable-python3interp=yes \
            --with-python-config-dir=/usr/lib/python3.6/config-3.6m-darwin \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr
cd src && sudo make install
```

[Build vim from source](https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source)

### YouCompleteMe
This plugin is compatitable with conda python. Vim and Youcompleteme can have different python build

### tmux and vim mapping
1. system preference -> keyboard -> modify keys -> choose keyboard -> option == option
2. change vim [mapping](http://stackoverflow.com/questions/7501092/can-i-map-alt-key-in-vim)
