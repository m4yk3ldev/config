-- -- Example config in Lua
-- vim.g.tokyonight_style = "storm"
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_italic_comments = true
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- vim.o.background = "dark"
-- vim.g.tokyonight_transparent_sidebar = true
-- vim.g.tokyonight_terminal_colors = true
--
-- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
-- vim.g.tokyonight_lualine_bold = true
-- -- vim.g.tokyonight_transparent_sidebar = true
-- -- -- Load the colorscheme
-- vim.cmd([[colorscheme tokyonight]])
-- --
vim.opt.termguicolors = true
-- Para Sonokai
vim.g.sonokai_style = 'andromeda'
vim.g.sonokai_better_performance = 1
vim.g.sonokai_enable_italic = 1
vim.g.sonokai_spell_foreground = "colored"
vim.g.sonokai_diagnostic_text_highlight = 1
vim.g.sonokai_diagnostic_virtual_text = "colored"
vim.cmd("colorscheme sonokai")
