local ok_status, signature = pcall(require, "lsp_signature")

if not ok_status then
  return
end

signature.setup({
  bind = true, -- This is mandatory, otherwise border config won't get registered.
  handler_opts = {
    border = "rounded"
  }
})
