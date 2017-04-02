"" ============================================================================
""                             All Mode Mappings
"" ============================================================================

"" ============================================================================
""                           Insert Mode Mappings
"" ============================================================================
" Leaving insert mode with jj or jk
inoremap jj <Esc><Right>
inoremap jk <Esc><Right>

" Setting vim tab
noremap ¡ 1gt
noremap ™ 2gt
noremap £ 3gt
noremap ¢ 4gt
noremap ∞ 5gt
noremap § 6gt

"" ============================================================================
""                        Normal/Visual Mode Mappings
"" ============================================================================
" YouCompleteMe
nnoremap <F9> :YcmForceCompileAndDiagnostics<CR>

" If hl search is off, starting a new search or moving enables it
nnoremap * :set hlsearch<CR>*
nnoremap # :set hlsearch<CR>#
nnoremap n :set hlsearch<CR>n
nnoremap N :set hlsearch<CR>N
nnoremap / :set hlsearch<CR>/
nnoremap ? :set hlsearch<CR>?

"" ============================================================================
""                         Leader Mappings (Sorted)
"" ============================================================================
" Also use spacebar as a leader
nmap <Space> \

nnoremap <Leader>b :Denite buffer<CR>
nnoremap <Leader>p :call Cdroot()<CR>:Denite file_rec<CR>
nnoremap <Leader>cdf :call Cdfile()<CR>
nnoremap <Leader>cdr :call Cdroot()<CR>
nnoremap <Leader>cmt :call CmtSection("")<Left><Left>
nnoremap <Leader>cx :!chmod a+x %<CR>
nnoremap <Leader>db :windo diffthis<CR>
nnoremap <Leader>df :Gdiff<CR>
nnoremap <Leader>do :windo diffoff<CR>
nnoremap <Leader>dom :Gdiff origin/master<CR>
nnoremap <Leader>du :diffupdate<CR>
nnoremap <Leader>ev :e $MYVIMRC<CR>G$F/
nnoremap <Leader>h :set hlsearch! hlsearch?<CR>
nnoremap <Leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>jf :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>ji :YcmCompleter GoToImprecise<CR>
nnoremap <Leader>jj :YcmCompleter GoTo<CR>
nnoremap <Leader>mk :w<CR>:call Cdroot()<CR>:call VimuxRunCommand("clear; make -j")<CR>
nnoremap <Leader>rd :redraw!<CR>
nnoremap <Leader>rr :w<CR>:call VimuxRunCommand('./' . bufname("%"))<CR>
nnoremap <Leader>se :sp<CR>:e %:h<CR>
nnoremap <Leader>sp :setlocal spell! spelllang=en_us<CR>
nnoremap <Leader>ss :call SortSection()<CR>
nnoremap <Leader>te :tabe %:h<CR>
nnoremap <Leader>tf :call Cdroot()<CR>:call MkGtest()<CR>
nnoremap <Leader>tm :Tabmerge right<CR>
nnoremap <Leader>ve :vsp<CR>:e %:h<CR>


map cc <plug>NERDCommenterToggle
"repalce tabs with white spaces"
map <F2> :retab <CR> :wq! <CR>
""Nerdtree open/close"
nnoremap <F5> :NERDTreeToggle<CR>
""toggle highlight search"
nnoremap <F3> :set hlsearch!<CR>

"remove leading white spaces"
nnoremap ft :left<CR>


function! ToggleMovement(firstOp, thenOp)
    let pos = getpos('.')
    execute "normal! " . a:firstOp
    if pos == getpos('.')
        execute "normal! " . a:thenOp
    endif
endfunction
"The original carat 0 swap, press 0 goes to the first non-white space char,
""press 0 again goest to the first column
nnoremap <silent> 0 :call ToggleMovement('^', '0')<CR>
"How about G and gg
nnoremap <silent> G :call ToggleMovement('G', 'gg')<CR>
nnoremap <silent> gg :call ToggleMovement('gg', 'G')<CR>"

"nnoremap <C-w> :w<CR>
"inoremap <C-w> <esc>='[:w<cr>]'

nnoremap <leader>em :vsplit ~/.vim/startup/mappings.vim<cr>
nnoremap <leader>es :vsplit ~/.vim/startup/settings.vim<cr>
nnoremap <leader>ep :vsplit ~/.vim/startup/plugins.vim<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>

set pastetoggle=<F6>
