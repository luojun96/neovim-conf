
local setup, nvimfzf = pcall(require, "nvim-fzf")
if not setup then return end

nvimfzf.Setup()
