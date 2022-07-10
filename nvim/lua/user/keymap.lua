local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Para dividar pantalla
keymap("n", "<leader>v", ":vsplit<CR>", opts)
-- ForceWrite
keymap("n", "<C-s>", "<cmd>w!<CR>", opts)

-- ForceQuit
keymap("n", "<C-q>", "<cmd>q!<CR>", opts)
-- Turn off search highlighting
keymap('n', '<Esc>', ':noh<CR>', opts)
-- Get out of the Terminal
keymap('t', '<Esc>', '<C-\\><C-n>', opts)
-- Duplicate Line
keymap('n', 'tt', ':t.<CR>', opts)

-- Recargar las configuraciones
keymap('n', '<C-r>', '<cmd>lua reload_nvim_conf()<CR><cmd>CocRestart<cr>', opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", opts)
keymap("n", "<leader>lp", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>b", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>gs", "<cmd>Telescope git_status<CR>", opts)
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", opts)
keymap("n", "<leader>h", "<cmd>Telescope oldfiles<CR>", opts)
keymap("n", "<leader>e", "<cmd>Telescope symbols<cr>"
  , opts)

-- Para sellecionar todo
keymap("n", "<C-a>", "ggVG", opts)

-- COC
keymap("n", "<leader>ca", "<Plug>(coc-codeaction)", opts)
keymap("x", "<leader>ca", "<Plug>(coc-codeaction-selected)", opts)

keymap("n", "gd", "<Plug>(coc-definition)", opts)
keymap("n", "gr", "<Plug>(coc-references)", opts)
keymap("n", "gi", "<Plug>(coc-implementation)", opts)
keymap("n", "K", ":call CocActionAsync('doHover')<CR>", opts)
keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})
keymap("i", "<C-Space>", "coc#refresh()", { silent = true, expr = true })
keymap('n', '<F3>', ':call CocAction("format")<CR>', opts)
keymap("n", "gc", "<Plug>(coc-git-commit)", opts)
-- navigate conflicts of current buffer
keymap("n", "[c", "<Plug>(coc-git-prevconflict)", opts)
keymap("n", "]c", "<Plug>(coc-git-nextconflict)", opts)
-- navigate chunks of current buffer
keymap("n", "[g", "<Plug>(coc-git-prevchunk)", opts)
keymap("n", "]g", "<Plug>(coc-git-nextchunk)", opts)
-- show chunk diff at current position
keymap("n", "gs", "<Plug>(coc-git-chunkinfo)", opts)

-- NvimTree mapping
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<C-f>", ":NvimTreeFindFile<CR>", opts)

-- Para automostra la documentacion
vim.api.nvim_exec(
  [[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
  false
)

-- CheatSH Documentation
keymap("n", "<leader>c", "<cmd>CheatSH<cr>", opts)

-- RestNvim
keymap("n", "<leader>r", "<Plug>RestNvim<cr>", opts)
keymap("n", "<leader>rp", "<Plug>RestNvimPreview<cr>", opts)
keymap("n", "<leader>rl", "<Plug>RestNvimLast<cr>", opts)

-- ToggleTerm
keymap("n", "<F2>", "<cmd>ToggleTerm<cr>", opts)

-- Trouble
keymap("n", "<leader>xx", "<cmd>Trouble<cr>", { silent = true, noremap = true })
keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", { silent = true, noremap = true })
keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", { silent = true, noremap = true })
keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", { silent = true, noremap = true })
keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", { silent = true, noremap = true })
