-- Example config in Lua
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.o.background = "dark"
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_terminal_colors = true
-- vim.g.tokyonight_transparent = true

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
vim.g.tokyonight_lualine_bold = true
vim.g.tokyonight_transparent_sidebar = true
-- -- Load the colorscheme
vim.cmd([[colorscheme tokyonight]])
--
vim.opt.termguicolors = true

-- Default options:
-- require("kanagawa").setup({
-- 	undercurl = true, -- enable undercurls
-- 	specialReturn = true, -- special highlight for the return keyword
-- 	specialException = true, -- special highlight for exception handling keywords
-- 	transparent = false, -- do not set background color
-- 	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
--   italic = true,
-- 	colors = {},
-- 	overrides = {},
-- })
--
-- -- setup must be called before loading
-- vim.cmd("colorscheme kanagawa")
--
-- vim.cmd("colorscheme gruvbox")
