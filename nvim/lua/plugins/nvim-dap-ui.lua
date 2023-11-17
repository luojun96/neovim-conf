
local setup, dapui = pcall(require, "dapui")
if not setup then
  return
end

dapui.setup()

local setup, dap = pcall(require, "dap")
if not setup then
  return
end

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
