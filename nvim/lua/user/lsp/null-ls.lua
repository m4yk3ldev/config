local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions
local code_actions = null_ls.builtins.code_actions
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/completion
-- local completion = null_ls.builtins.completion

null_ls.setup({
	debug = false,
	sources = {
		code_actions.eslint,
		code_actions.gitsigns,
		diagnostics.eslint,
		diagnostics.stylelint,
		diagnostics.alex,
		diagnostics.checkmake,
		diagnostics.djlint,
		diagnostics.jsonlint,
		diagnostics.ktlint,
		diagnostics.luacheck,
		diagnostics.shellcheck,
		diagnostics.sqlfluff,
		diagnostics.yamllint,
		diagnostics.zsh,
		formatting.eslint,
		formatting.stylua,
		formatting.djhtml,
		formatting.autopep8,
		formatting.fixjson,
		formatting.gofmt,
		formatting.isort,
		formatting.ktlint,
		formatting.perltidy,
		formatting.pg_format,
		formatting.trim_newlines,
		formatting.trim_whitespace,
		formatting.prettier.with({
			filetypes = { "html", "css", "yaml", "markdown", "json" },
			disabled_filetypes = { "javascript" },
		}),
	},
})
