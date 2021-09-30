"Theme
let g:airline_powerline_fonts = 1
let g:airline_theme = "gruvbox"
let g:airline_disable_statusline = 0
let g:airline#extensions#battery#enabled = 1
let g:airline#extensions#wifi#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#kite#enabled = 1
let g:battery#update_tabline = 1    " For tabline.
let g:battery#update_statusline = 1 " For statusline.
let g:wifi#update_tabline = 1    " For tabline.
let g:wifi#update_statusline = 1 " For statusline.

"TABLINE:
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tablino

" COC
let g:coc_global_extensions = [ 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver'  ]

" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" KITE
let g:kite_supported_languages = ['python']
let g:kite_auto_complete=1
let g:kite_snippets=1
let g:kite_tab_complete=1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=[$HOME.'/configs/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<C-_>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

"  nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'

" kite
let g:kite_supported_languages = ['*']

" coc
autocmd FileType scss setl iskeyword+=@-@

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
            \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
            \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
            \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" fugitive always vertical diffing
set diffopt+=vertical



" Highlight symbol under cursor on CursorHold


let $FZF_DEFAULT_OPTS='--layout=reverse'
"let g:fzf_layout = { 'window': 'call FloatingFZF()' }
"function! FloatingFZF()
"let buf = nvim_create_buf(v:false, v:true)
"call setbufvar(buf, '&signcolumn', 'no')
"let height = float2nr((&lines - 3) / 2)
"let width = float2nr(&columns - (&columns * 2 / 10))
"let col = float2nr((&columns - width) / 2)
"let row = float2nr((&lines - height) / 2)
"let opts = {
            "\ 'relative': 'editor',
            "\ 'row': row,
            "\ 'col': col,
            "\ 'width': width,
            "\ 'height': height
            "\ }
"call nvim_open_win(buf, v:true, opts)
"endfunction

"function! SearchPatternInFile(pattern)
"" Save cursor position.
"let save_cursor = getcurpos()

"" Set cursor position to beginning of file.
"call cursor(0, 0)

"" Search for the string 'hello' with a flag c.  The c flag means that a
"" match at the cursor position will be accepted.
"let search_result = search(a:pattern, "c")

"" Set the cursor back at the saved position.  The setpos function was
"" used here because the return value of getcurpos can be used directly
"" with it, unlike the cursor function.
"call setpos('.', save_cursor)

"" If the search function didn't find the pattern, it will have
"" returned 0, thus it wasn't found.  Any other number means that an instance
"" has been found.
"return search_result
"endfunction

" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}
