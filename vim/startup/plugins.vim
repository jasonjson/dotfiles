call plug#begin('~/.vim/plugged')

Plug 'tell-k/vim-autopep8'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdcommenter'       "auto comment
Plug 'luochen1990/rainbow'                               " Rainbow parenthesis coloring
Plug 'scrooloose/syntastic'                              " Syntax checking
Plug 'scrooloose/nerdtree'
Plug 'spf13/vim-autoclose'                               " Matching [({'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-fugitive'                                " Git Wrapper
Plug 'tpope/vim-surround'                                " Surrounding text
Plug 'SirVer/ultisnips'               " Text snippets
Plug 'honza/vim-snippets'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()

"" ============================================================================
""                              Plugin Settings
"" ============================================================================
" UltiSnips
 let g:UltiSnipsExpandTrigger = "<tab>"
 let g:UltiSnipsJumpForwardTrigger = "<tab>"
 let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
 let g:snips_author = "Jason Liu"
 let g:snips_email = "johnny.lyy@gmail.com""

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
let g:syntastic_check_on_wq = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:syntastic_python_checkers=['pylint']
let g:syntastic_quiet_messages = { "level":  "warnings", "type": "style", "regex": ["flask", "wtforms",'migrate', "__subclasses__", ".query.*member", "Instance of 'tuple' has", "iloc"]}

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

" YouCompleteMe
let g:ycm_cache_omnifunc = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_server_log_level = 'debug'
let g:ycm_server_keep_logfiles = 0
"let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_always_populate_location_list = 1
map <leader>g :YcmCompleter  GoToDefinitionElseDeclaration<CR>

"ctrl p plug
let g:ctrlp_map = 'zz'
let g:ctrlp_working_path_mode = 'w'
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
        \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:molokai_original = 1

let g:vim_markdown_folding_disabled = 1
let g:Powerline_symbols = 'fancy'
