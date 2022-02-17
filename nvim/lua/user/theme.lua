-- Example config in Lua
-- vim.g.tokyonight_style = "storm"
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_italic_comments = true
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- vim.o.background = "dark"
-- vim.g.tokyonight_transparent_sidebar = true

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
-- vim.g.tokyonight_lualine_bold = true
--
-- -- Load the colorscheme
-- vim.cmd([[colorscheme tokyonight]])

vim.opt.termguicolors = true
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox-material]])
vim.g.gruvbox_material_background = "hard"

vim.g.gruvbox_material_enable_italic = true
vim.g.gruvbox_material_disable_italic_comment = true
vim.g.gruvbox_material_spell_foreground = "colored"
vim.g.gruvbox_material_diagnostic_text_highlight = true
vim.g.gruvbox_material_diagnostic_line_highlight = true
vim.g.gruvbox_material_palette = "mix"
