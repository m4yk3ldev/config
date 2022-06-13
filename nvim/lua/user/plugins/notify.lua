local status_ok, notify = pcall(require, "notify")
if status_ok then
  notify.setup({
    background_colour = "#a0a0a0",
  })
  vim.notify = notify
end
