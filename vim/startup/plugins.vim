call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'
Plug 'https://github.com/scrooloose/nerdcommenter'       "auto comment
Plug 'Shougo/denite.nvim'                                " Helm for Vim
Plug 'Valloric/ListToggle'                               " Toggling quickfix and location list
Plug 'bhipple/vimux'                                     " Vim and Tmux Integration
Plug 'bling/vim-airline'                                 " Status line
Plug 'christoomey/vim-tmux-navigator'                    " Window/Pane switching with Vim and Tmux
Plug 'godlygeek/tabular'                                 " Align blocks of text
Plug 'justinmk/vim-syntax-extra'                         " Flex and Bison syntax highlighting
Plug 'luochen1990/rainbow'                               " Rainbow parenthesis coloring
Plug 'scrooloose/syntastic'                              " Syntax checking
Plug 'spf13/vim-autoclose'                               " Matching [({'
Plug 'tommcdo/vim-exchange'                              " cx operator for exchanging text regions
Plug 'tpope/vim-commentary'                              " Comment/uncomment operator
Plug 'tpope/vim-fugitive'                                " Git Wrapper
Plug 'tpope/vim-repeat'                                  " Dot operator for plugins
Plug 'tpope/vim-rhubarb'                                 " Vim + Git + Hub
Plug 'tpope/vim-surround'                                " Surrounding text
Plug 'tpope/vim-tbone'                                   " vim and tmux mappings
Plug 'tpope/vim-unimpaired'                              " Pairs of keyboard mappings for common tasks
Plug 'tpope/vim-vinegar'                                 " netrw improvement
Plug 'SirVer/ultisnips'               " Text snippets
Plug 'Valloric/YouCompleteMe'

call plug#end()

"" ============================================================================
""                              Plugin Settings
"" ============================================================================
" Grepper
nmap gs :call Cdroot()<CR><plug>(GrepperOperator)
xmap gs :call Cdroot()<CR><plug>(GrepperOperator)

let g:grepper = {
    \ 'tools':     ['git'],
    \ 'jump':      1,
    \ }

" Rainbow coloring
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

" Syntastic
let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1

" Tagbar
let g:tagbar_left = 1

" UltiSnips
" Magic to make the <enter> key expand snippes, even with YouCompleteMe installed.
let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function! ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"

" Vimux
let g:VimuxOrientation = "h"
let g:VimuxHeight = "35"

" YouCompleteMe
let g:ycm_server_log_level = 'debug'
let g:ycm_server_keep_logfiles = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_always_populate_location_list = 1

let g:molokai_original = 1
