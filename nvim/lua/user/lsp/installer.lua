local lsp_installer = require("nvim-lsp-installer")

local on_attach = function(client, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
end


lsp_installer.on_server_ready(function(server)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local status_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
    if status_ok then
      capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
    end

    local opts = {
        on_attach = on_attach,
        capabilities = capabilities,
    }

    if server.name == "bash" then
      opts.settings = require('user.lsp.servers.bash').settings
    end

    if server.name == "cssls" then
      opts.settings = require('user.lsp.servers.css').settings
    end

    if server.name == "eslint" then
        opts.on_attach = function (client, bufnr)
            client.resolved_capabilities.document_formatting = true
            on_attach(client, bufnr)
        end
        opts.settings = require('user.lsp.servers.eslint').settings
    end

    if server.name == "html" then
      opts.capabilities = require('user.lsp.servers.html').capabilities
      opts.settings = require('user.lsp.servers.html').settings
    end

    if server.name == "jsonls" then
      opts.settings = require('user.lsp.servers.json').settings
    end

    if server.name == "sumneko_lua" then
      opts.settings = require('user.lsp.servers.lua').settings
    end

    -- This setup() function is exactly the same as lspuser.s setup function (:help lspuser.quickstart)
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)
