if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  set laststatus=2
  highlight Normal ctermbg=NONE
  let &t_ut=''

  colorscheme gruvbox
  let g:gruvbox_contrast_dark = "hard"
  let g:gruvbox_italic=1
  " let g:tokyonight_style = 'night' available: night, storm
  " let g:tokyonight_enable_italic = 1
  " colorscheme tokyonight
endif
