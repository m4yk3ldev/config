"Declarando instaladores
"
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Iconos
Plug 'ryanoasis/vim-devicons'
Plug 'kaicataldo/material.vim', { 'branch': 'main'}
Plug 'lambdalisue/battery.vim'
Plug 'lambdalisue/wifi.vim'

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

"Theme
Plug 'vim-airline/vim-airline'
Plug 'powerline/powerline'
Plug 'morhetz/gruvbox'

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"Autocompletamiento
Plug 'mjbrownie/django_completeme'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'KabbAmine/vCoolor.vim'
Plug 'jmcantrell/vim-virtualenv'

"Buscador
Plug 'kien/ctrlp.vim'

"GIT
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()
