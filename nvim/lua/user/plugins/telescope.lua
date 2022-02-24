local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("n", "<C-p>", "<cmd>Telescope find_files hidden=true<cr>", opts)
keymap("n", "<C-l>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<C-b>", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>gt", "<cmd>Telescope git_status<CR>", opts)
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", opts)
keymap("n", "<C-h>", "<cmd>Telescope oldfiles<CR>", opts)

require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			"_next",
			".next",
			".git",
			".vscode",
		},
	},
})
