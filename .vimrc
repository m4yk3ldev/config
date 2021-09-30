" Set compatibility to Vim only.
set nocompatible
set rnu
set cursorcolumn
set cursorline
set wildmenu                 " Muestra las opciones de los menu
set noswapfile
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
set signcolumn=yes
set smartindent
set clipboard=unnamedplus

"turn on numbering
set nu
set mouse=a

" Set the default file encoding to UTF-8:
set encoding=utf-8

" Enable folding
set foldmethod=indent
set foldlevel=99

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on
" Turn off modelines

set modelines=0

so ~/.vim/plugins.vim



" For plug-ins to load correctly.
filetype plugin indent on
filetype plugin on

"Nerd Tree
map <C-n> :NERDTreeToggle<CR>

"Theme
let g:airline_powerline_fonts = 1
let g:airline_theme = "gruvbox"
let g:airline_disable_statusline = 0
let g:airline#extensions#battery#enabled = 1
let g:airline#extensions#wifi#enabled = 1
let g:airline#extensions#branch#enabled = 1
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
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline

set termguicolors
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg=NONE
set laststatus=2
"
" SimpylFold
let g:SimpylFold_docstring_preview=1
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-html', 'coc-json', 'coc-css' ]

"Keymap
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let mapleader=" "

" Enable folding with the spacebar
nnoremap <space> za

" Abrir terminal
map <F2> :belowright terminal<CR>

" Indent
nmap <silent> <F3> <esc>gg=G<esc> 

"Moving Tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
let g:javascript_plugin_flow = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" Remap keys for gotos:
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
noremap <leader>gs :CocSearch

" Use <c-space> to trigger completion.
if &filetype == "javascript" || &filetype == "python"
    inoremap <c-space> <C-x><C-u>
else
    inoremap <silent><expr> <c-space> coc#refresh()
endif

" Configuraciones

" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" kite
let g:kite_supported_languages = ['python']
let g:kite_auto_complete=1
let g:kite_snippets=1
let g:kite_tab_complete=1

" Keymap KITE
nmap <silent> <buffer> gK <Plug>(kite-docs)


" coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
            \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
            \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
            \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1

" Keep indentation level from previous line:
autocmd FileType python set autoindent
autocmd FileType javascript set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start


"Folding based on indentation:
autocmd FileType python set foldmethod=indent
"use space to open folds
nnoremap <space> za
"----------Stop python PEP 8 stuff--------------
"
"Para Django
let g:coc_filetype_map = {
            \ 'htmldjango': 'html',
            \ }

" Para comentar
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


