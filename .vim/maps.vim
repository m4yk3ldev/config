"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let mapleader=" "

"Nerd Tree
" shorter commands
map <C-f> :NERDTreeFind<cr>
map <C-n> :NERDTreeToggle<CR>
nmap <Leader>s <Plug>(easymotion-s2)
" Enable folding with the spacebar
nnoremap <space> za

" Abrir terminal
map <F2> :belowright terminal<CR>

" Indent
nmap <silent> <F3> <esc>gg=G<esc>

"Moving Tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
map <Leader>v <esc>:vsplit<CR>
let g:javascript_plugin_flow = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

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

" Para Usar fzf

" find file
noremap \ :FZF<CR>

" find history
noremap <C-h> :MRU<CR>

" find lines containing keywords
noremap <C-l> :LinesWithPreview<CR>

" find buffer
noremap <C-b> :Buffers<CR>

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noruler
                  \| autocmd BufLeave <buffer> set laststatus=2 ruler

command! -bang -nargs=* Buffers
                  \ call fzf#vim#buffers(
                  \   '',
                  \   <bang>0 ? fzf#vim#with_preview('up:60%')
                  \           : fzf#vim#with_preview('right:0%', '?'),
                  \   <bang>0)

command! -bang -nargs=* LinesWithPreview
                  \ call fzf#vim#grep(
                  \   'rg --with-filename --column --line-number --no-heading --color=always --smart-case . '.fnameescape(expand('%')), 1,
                  \   fzf#vim#with_preview({'options': '--delimiter : --nth 4.. --sort'}, 'up:50%', '?'),
                  \   1)

command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())

