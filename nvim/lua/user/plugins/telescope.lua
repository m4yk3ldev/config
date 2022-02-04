
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("n", '<C-p>', "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<C-l>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<C-b>", "<cmd>Telescope buffers<cr>", opts)