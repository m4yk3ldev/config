
let g:nvim_data_root = stdpath('data')
let g:nvim_config_root = stdpath('config')
let g:config_file_list = [
            \'/general.vim',
            \'/plugins.vim',
            \'/theme.vim',
            \'/config/lightline.vim',
            \'/config/nerdtree.vim',
            \'/config/fzf.vim',
            \'/config/ultisnips.vim',
            \'/config/closetag.vim',
            \'/config/coc.vim',
            \'/config/fugitive.vim',
            \'/config/nerdcommenter.vim',
            \'/maps/general.vim',
            \'/maps/nerdtree.vim',
            \'/maps/fzf.vim',
            \'/maps/ultisnips.vim',
            \'/maps/nerdcommenter.vim',
            \'/maps/coc.vim',
            \'/maps/easymotion.vim',
            \]

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . f
endfor

