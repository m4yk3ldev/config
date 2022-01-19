
" Lightlane
let g:lightline = {
                  \ 'active': {
                        \   'left': [['mode', 'paste'], ['relativepath', 'modified']],
                        \   'right': [['filetype', 'percent', 'lineinfo'], ['gitbranch']]
                        \ },
                        \ 'component': {
                              \ 'lineinfo': ' %3l:%-2v',
                              \ },
                              \ 'component_function': {
                                    \   'gitbranch': 'fugitive#head',
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
