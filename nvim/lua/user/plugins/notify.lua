local status_ok, notify = pcall(require, "notify")
if status_ok then
  vim.notify = notify
end
