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

"

"" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on
" Turn off modelines

set modelines=0

so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

" For plug-ins to load correctly.
filetype plugin indent on
filetype plugin on

set termguicolors
" colorscheme gruvbox
" let g:gruvbox_contrast_dark = "hard"
" let g:gruvbox_italic=1
highlight Normal ctermbg=NONE
set laststatus=2
set background=dark
let &t_ut=''

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
