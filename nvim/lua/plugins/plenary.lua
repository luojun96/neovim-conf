local setup, nvimplenary = pcall(require, "nvim-plenary")
if not setup then return end

nvimplenary.Setup()
