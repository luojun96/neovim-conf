local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then return end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then return end

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next, -- move to next result
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
      },
    },
  },
})

telescope.load_extension("fzf")

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fx', builtin.treesitter, {})
-- go
-- vim.keymap.set('n', '<leader>fl', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fl', "<cmd>lua require('telescope.builtin').lsp_document_symbols({fname_width = 0.1,symbol_width=0.8, symbol_type_wi,fldth = 0.1})<cr>", {})
vim.keymap.set('n', '<leader>fld', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {})

