local status_ok, notify = pcall(require, "notify")
if status_ok then
  notify.setup()
  vim.notify = notify
end
