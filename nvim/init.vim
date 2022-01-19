
let g:nvim_data_root = stdpath('data')
let g:nvim_config_root = stdpath('config')
let g:config_file_list = [
            \'/general.vim',
            \'/plugins.vim',
            \'/theme.vim',
            \'/config-plug/lightline.vim',
            \'/config-plug/nerdtree.vim',
            \'/config-plug/fzf.vim',
            \'/maps/general.vim',
            \'/maps/nerdtree.vim',
            \'/maps/fzf.vim',
            \]

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . f
endfor

