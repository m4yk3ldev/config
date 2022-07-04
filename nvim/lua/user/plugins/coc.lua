vim.g.coc_global_extensions = {
  'coc-html',
  'coc-json',
  'coc-css',
  'coc-tsserver',
  'coc-emmet',
  'coc-tabnine',
  'coc-prettier',
  'coc-eslint',
  'coc-pyright',
  'coc-pairs',
  'coc-marketplace',
  'coc-git',
  'coc-htmldjango',
  'coc-snippets',
  'coc-scssmodules',
  'coc-xml',
  'coc-styled-components',
  'coc-html-css-support',
  'coc-import-cost',
  'coc-vimlsp',
  'coc-sumneko-lua',
  'coc-yank',
  'coc-spell-checker',
  'coc-cspell-dicts',
  "coc-symbol-line",
  "coc-docker"
}
vim.cmd('autocmd FileType scss setl iskeyword+=@-@')
vim.cmd('let g:javascript_plugin_flow = 1')
vim.cmd("autocmd CursorHold * silent call CocActionAsync('highlight')")
