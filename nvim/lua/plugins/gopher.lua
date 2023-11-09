local setup, gopher = pcall(require, "gopher")
if not setup then return end

gopher.setup({
    commands = {
        go = "go",
        gomodifytags = "gomodifytags",
        gotests = "gotests",
        impl = "impl",
        iferr = "iferr",
    },
})
