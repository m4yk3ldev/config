local ok_status, signature = pcall(require, "lsp_signature")

if not ok_status then
  return
end

-- signature.setup({
--   bind = true,
--   doc_lines = 5,
--   transparency = 100,
--   floating_window = false,
--   floating_window_above_cur_line = false, -- set false to not overlay with pop menu
--   toggle_key = '<c-k>', -- LspHover but in insert mode
-- })

signature.setup()
