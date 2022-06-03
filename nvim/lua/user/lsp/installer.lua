local lsp_installer = require("nvim-lsp-installer")

local on_attach = function(client, bufnr)
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
end
lsp_installer.settings = {
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗",
    },
    keymaps = {
      -- Keymap to expand a server in the UI
      toggle_server_expand = "<CR>",
      -- Keymap to install a server
      install_server = "i",
      -- Keymap to reinstall/update a server
      update_server = "u",
      -- Keymap to uninstall a server
      uninstall_server = "X",
    },
  },

  pip = {
    -- These args will be added to `pip install` calls. Note that setting extra args might impact intended behavior
    -- and is not recommended.
    --
    -- Example: { "--proxy", "https://proxyserver" }
    install_args = {},
  },

  -- Controls to which degree logs are written to the log file. It's useful to set this to vim.log.levels.DEBUG when
  -- debugging issues with server installations.
  log_level = vim.log.levels.INFO,

  -- Limit for the maximum amount of servers to be installed at the same time. Once this limit is reached, any further
  -- servers that are requested to be installed will be put in a queue.
  max_concurrent_installers = 1,
}

lsp_installer.on_server_ready(function(server)
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
  if status_ok then
    capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
  end

  local opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  if server.name == "bash" then
    opts.settings = require("user.lsp.servers.bash").settings
  end

  if server.name == "cssls" then
    opts.on_attach = function(client, bufnr)
      client.resolved_capabilities.document_formatting = true
      on_attach(client, bufnr)
    end
    opts.settings = require("user.lsp.servers.css").settings
  end

  if server.name == "html" then
    opts.capabilities = require("user.lsp.servers.html").capabilities
    opts.settings = require("user.lsp.servers.html").settings
  end

  if server.name == "jsonls" then
    opts.settings = require("user.lsp.servers.json").settings
  end

  if server.name == "sumneko_lua" then
    opts.settings = require("user.lsp.servers.lua").settings
  end

  if server.name == "pyright" then
    opts.on_attach = function(client, bufnr)
      client.resolved_capabilities.document_formatting = true
      on_attach(client, bufnr)
    end
    opts.settings = require("user.lsp.servers.pyright").settings

  end

  -- This setup() function is exactly the same as lspuser.s setup function (:help lspuser.quickstart)
  server:setup(opts)
  vim.cmd([[ do User LspAttachBuffers ]])
end)
