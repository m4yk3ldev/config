local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "maintained",
	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		additional_vim_regex_highlighting = false,
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true },
	context_commentstring = {
		enable = true,
		enable_autocmd = true,
	},
	autotag = {
		enable = true,
		disable = { "xml" },
	},
	rainbow = {
		enable = true,
		colors = {
			"Gold",
			"Orchid",
			"DodgerBlue",
			"Cornsilk",
			"Salmon",
			"LawnGreen",
		},
		disable = { "html" },
	},
	playground = {
		enable = true,
	},
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.typescript.used_by = "javascriptflow"
parser_config.tsx.used_by = { "javascript", "typescript.tsx", "javascript.tsx" }

require("vim.treesitter.query").set_query("c", "injections", "(comment) @comment")
require("nvim-treesitter.install").prefer_git = true
