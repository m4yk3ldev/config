-- Autocommand that reloads neovim whenever you save the plug.lua
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plug.lua source <afile> | PackerUpdate
augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  local fn = vim.fn

  -- Automatically install packer
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
  end
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
  max_jobs = 1,
})

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use("wbthomason/packer.nvim") -- Have packer manage itself
  use("lewis6991/impatient.nvim")
  use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
  use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
  use("numToStr/Comment.nvim") -- Easily comment stuff
  use("antoinemadec/FixCursorHold.nvim") -- Needed while issue https://github.com/neovim/neovim/issues/12587 is still open
  use "kyazdani42/nvim-web-devicons"
  use("rcarriga/nvim-notify")
  use { "j-hui/fidget.nvim", config = function()
    require "fidget".setup {}
  end }
  use("ahmedkhalf/project.nvim")
  use({ "akinsho/bufferline.nvim", tag = "*" })
  use("moll/vim-bbye")
  use("neoclide/vim-jsx-improve")

  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
  })
  use("kyazdani42/nvim-tree.lua")
  use("norcalli/nvim-colorizer.lua")
  use("folke/lsp-colors.nvim")
  use({ "akinsho/toggleterm.nvim", branch = "main" })
  use("folke/trouble.nvim")
  use("rebelot/kanagawa.nvim")
  use("folke/tokyonight.nvim")
  use("vim-python/python-syntax")
  use("ellisonleao/gruvbox.nvim")

  -- cmp plugins
  use("hrsh7th/nvim-cmp") -- The completion plugin
  use("hrsh7th/cmp-buffer") -- buffer completions
  use("hrsh7th/cmp-path") -- path completions
  use("hrsh7th/cmp-cmdline") -- cmdline completions
  use("saadparwaiz1/cmp_luasnip") -- snippet completions
  use("hrsh7th/cmp-nvim-lsp") -- Cargando tambien LSP
  use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" }) -- Para el Tabnine
  use("hrsh7th/cmp-nvim-lsp-signature-help")

  -- snippets
  use("L3MON4D3/LuaSnip") --snippet engine
  use("rafamadriz/friendly-snippets") -- a bunch of snippets to use
  use("stevearc/vim-vscode-snippets") -- Usar los snippets del Vscode
  use { "Djancyp/cheat-sheet" }
  -- LSP
  use("neovim/nvim-lspconfig") -- enable LSP
  use("williamboman/nvim-lsp-installer") -- simple to use language server installer
  use("onsails/lspkind-nvim") -- Para los iconos
  use({ 'kosayoda/nvim-lightbulb', opt = true, config = function()
    require('nvim-lightbulb').setup({ autocmd = { enabled = true } })
  end }) -- Para sacar el bombillo de Vscode

  -- null-ls
  use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters

  -- Treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }) -- Instalar optimizacion del parse files
  use("JoosepAlviste/nvim-ts-context-commentstring") -- Para reconocer los commentarios
  use("p00f/nvim-ts-rainbow") -- Adornar las chaves
  use("nvim-treesitter/nvim-treesitter-refactor")
  use("theHamsta/nvim-treesitter-pairs")
  use({ "styled-components/vim-styled-components", branch = "main" }) -- Cargar los estilos del styled-components
  use {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-gps").setup()
    end
  }
  use({ "windwp/nvim-autopairs", require = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-autopairs").setup()
    end
  }) -- Autopairs, integrates with both cmp and treesitter
  use({ "windwp/nvim-ts-autotag", require = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup()
    end
  }) -- Para Autocerrar los tag
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" }
    }
  }
  -- Telescope
  use("nvim-telescope/telescope.nvim")
  use("simrat39/symbols-outline.nvim")
  use("edluffy/hologram.nvim")
  use("nvim-telescope/telescope-media-files.nvim")

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  use("sindrets/diffview.nvim")

  -- Rest API
  use("NTBBloodbath/rest.nvim")

  -- Para syntax files HTTP files
  use("nicwest/vim-http")

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
