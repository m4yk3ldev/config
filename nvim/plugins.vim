
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif
call plug#begin(expand('~/.config/nvim/plugged'))

" syntax
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'preservim/nerdcommenter'
Plug 'mxw/vim-jsx'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" status bar
" Plug 'maximbaz/lightline-ale'
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'

" Themes
Plug 'kyazdani42/nvim-web-devicons'
Plug 'powerline/powerline'
Plug 'ghifarit53/tokyonight-vim'

" Tree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'sudormrfbin/cheatsheet.nvim'

" typing
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'windwp/nvim-autopairs'


" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/django-plus.vim'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'

call plug#end()

filetype plugin indent on
