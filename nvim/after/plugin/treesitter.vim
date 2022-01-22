if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
  enable = true,
  disable = {},
  },
indent = {
enable = false,
disable = {},
},
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "json",
    "yaml",
    "html",
    "scss",
    "python",
    "vue",
    "css",
    "bash",
    "comment",
    "dart",
    "dockerfile",
    "graphql",
    "html",
    "javascript",
    "jsdoc",
    "jsonc",
    "json",
    "json5",
    "make",
    "query",
    "regex",
    "typescript",
    "vim",
    },
  }

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx", "javascript.tsx" }
EOF
