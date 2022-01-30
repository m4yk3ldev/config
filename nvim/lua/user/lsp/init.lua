local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
 end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    -- This sets the spacing and the prefix, obviously.
    virtual_text = {
      spacing = 4,
      prefix = ''
    }
  }
)

require                       "user.lsp.installer"
require("user.lsp.handlers").setup()
require("user.lsp.colors")
require("user.lsp.config")
require("user.lsp.null-ls")

