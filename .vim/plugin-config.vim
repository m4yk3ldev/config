"BATERIA
let g:battery#update_tabline = 1    " For tabline.
let g:battery#update_statusline = 1 " For statusline.

"WIFI
let g:wifi#update_tabline = 1    " For tabline.
let g:wifi#update_statusline = 1 " For statusline.

" COC
let g:coc_global_extensions = [ 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-emmet', 'coc-tabnine'  ]

" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" KITE
"let g:kite_supported_languages = ['python']
"let g:kite_auto_complete=1
"let g:kite_snippets=1
"let g:kite_tab_complete=1


"  nerdtree
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

"Mostrar Ocultos
let NERDTreeShowHidden=1

" Quitar al abrir
let NERDTreeQuitOnOpen=1

"Eliminar el buffer
let NERDTreeAutoDeleteBuffer=1

"Cambiar el UI
let NERDTreeMinimalUI=1

" COC
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

" Lightlane
let g:lightline = {
                  \ 'active': {
                        \   'left': [['mode', 'paste'], [], ['virtualenvstatus'], ['relativepath', 'modified']],
                        \   'right': [['kitestatus'], ['battery'], ['wifi'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
                        \ },
                        \ 'inactive': {
                              \   'left': [['inactive'], ['relativepath']],
                              \   'right': [['bufnum']]
                              \ },
                              \ 'component': {
                                    \   'bufnum': '%n',
                                    \   'inactive': 'inactive',
                                    \ 'lineinfo': ' %3l:%-2v',
                                    \ },
                                    \ 'component_function': {
                                          \   'gitbranch': 'fugitive#head',
                                          \   'kitestatus': 'kite#statusline',
                                          \   'battery': 'battery#component',
                                          \ 'wifi': 'wifi#component',
                                          \ 'virtualenvstatus': 'virtualenv#statusline',
                                          \ },
                                          \ 'colorscheme': 'gruvbox',
                                          \ 'subseparator': {
                                                \   'left': '',
                                                \   'right': ''
                                                \ }
                                                \}

let g:lightline.separator = {
                  \   'left': '', 'right': ''
                  \}
let g:lightline.subseparator = {
                  \   'left': '', 'right': ''
                  \}

let g:lightline.tabline = {
                  \   'left': [ ['tabs'] ],
                  \   'right': [ ['close'] ]
                  \ }

set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
