"" ============================================================================
""                                 Settings
"" ============================================================================
set nocompatible

"" ============================================================================
""                                  Globals
"" ============================================================================

"" ============================================================================
""                            Editing and Moving
"" ============================================================================
syntax on
set autoindent
set cindent
set backspace=indent,eol,start
colorscheme molokai
set noswapfile

" Fixing tabs
set tabstop=4
set expandtab
set shiftwidth=4

" Allow switching off modified buffers without warning
set hidden

" Autosave before :make and other commands; autoreload when file mod
set autowrite
set autoread

" Smart case sensitivity
set ignorecase
set smartcase

" When multiple completions are possible, show all
set wildmenu

" Complete only up to point of ambiguity, like the shell does
set wildmode=list:longest

" Ignoring files (see :help wildignore)
set wildignore+=*.o,*.d,00*,nohup.out,tags,.hs-tags,*.hi,*.gcno,*.gcda,*.fasl,*.pyc

" Number of lines to scroll past when the cursor scrolls off the screen
set scrolloff=2

" Tool to use for Grepper
set grepprg="git"

"" ============================================================================
""                                Appearances
"" ============================================================================
" Show line numbers
set number

" Show tab and trailing whitespace characters
set listchars=tab:>-,trail:-
set list!

" Make vsplit split the new window to the right, not left
set splitright

" Incremental Search and Highlighting Results
set incsearch
set hlsearch

" Set the folding method
set foldmethod=manual
set foldnestmax=3
set foldminlines=10

" Set powerline status
set laststatus=2
set encoding=utf-8
set fileencoding=utf-8

function HeaderPython()
    call setline(1, "#!/usr/local/bin/python3")
    call setline(2, "# -*- coding: utf-8 -*-")
    call setline(3, "")
    normal G
    normal o
endf
autocmd bufnewfile *.py call HeaderPython()

function HeaderBash()
    call setline(1, "#!/bin/bash")
    call setline(2, "")
    normal G
    normal o
endf
autocmd bufnewfile *.sh call HeaderBash()
