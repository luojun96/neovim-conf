local setup, ndapgo = pcall(require, "dap-go")
if not setup then
  return
end

ndapgo.setup()

vim.keymap.set("n", "<leader>dt", ndapgo.debug_test)
vim.keymap.set("n", "<leader>dl", ndapgo.debug_last_test)
