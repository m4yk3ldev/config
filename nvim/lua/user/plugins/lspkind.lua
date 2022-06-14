local status, lspkind = pcall(require, "lspkind")
if (not status) then return end

local icons = require("user.plugins.lpskind_icons")
lspkind.init({
  -- enables text annotations
  --
  -- default: true
  with_text = true,

  -- default symbol map
  -- can be either 'default' (requires nerd-fonts font) or
  -- 'codicons' for codicon preset (requires vscode-codicons font)
  --
  -- default: 'default'
  -- preset = 'codicons',
  preset = "default",

  symbol_map = icons,
})
