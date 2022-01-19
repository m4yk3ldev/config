
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>do <Plug>(coc-codeaction)
noremap <leader>gs :CocSearch
" Use <c-space> to trigger completion.
if &filetype == "javascript" || &filetype == "python"
      inoremap <c-space> <C-x><C-u>
else
      inoremap <silent><expr> <c-space> coc#refresh()
endif
