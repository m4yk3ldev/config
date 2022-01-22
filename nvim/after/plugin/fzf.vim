let $FZF_DEFAULT_OPTS='--layout=reverse'
"
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
"
" " Para Usar fzf
"
" " find file
" noremap \ :Files<CR>
"
" " find history
" noremap <C-h> :MRU<CR>
"
" " find lines containing keywords
" noremap <C-l> :LinesWithPreview<CR>
"
" " find buffer
" noremap <C-b> :Buffers<CR>
"
"
