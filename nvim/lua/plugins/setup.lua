-- Packer, manually install it:
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim \
--   ~/.config/nvim/pack/packer/start/packer.nvim
-- OR auto install packer if not installed
-- $PWD/.local/share/nvim/ + ..
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

return require("packer").startup(function()
  use "wbthomason/packer.nvim"          -- https://github.com/wbthomason/packer.nvim

  -- Look and Feel
  use { "catppuccin/nvim", as = "catppuccin" } -- https://github.com/catppuccin/nvim

  -- Productivity
  use { "romgrk/barbar.nvim", wants = "nvim-tree/nvim-web-devicons" } -- https://github.com/romgrk/barbar.nvim
  use "nvim-lualine/lualine.nvim"       -- https://github.com/nvim-lualine/lualine.nvim
  use {
    "nvim-tree/nvim-tree.lua",          -- https://github.com/nvim-tree/nvim-tree.lua
    requires = {
      "nvim-tree/nvim-web-devicons",    -- https://github.com/nvim-tree/nvim-web-devicons
    },
  }
  use {
    "nvim-telescope/telescope-fzf-native.nvim", -- https://github.com/nvim-telescope/telescope-fzf-native.nvim
    run = "make",
  }
  use {
    "nvim-telescope/telescope.nvim", -- https://github.com/nvim-telescope/telescope.nvim
    requires = {
      "nvim-lua/plenary.nvim",
    },
    branch = "0.1.x",
  }

  -- Filetypes
  use "chrisbra/csv.vim" -- https://github.com/chrisbra/csv.vim

  -- Development
  use "lewis6991/gitsigns.nvim"             -- https://github.com/lewis6991/gitsigns.nvim
  use {
    "nvim-treesitter/nvim-treesitter",      -- https://github.com/nvim-treesitter/nvim-treesitter
    run = ":TSUpdate"
  }
  use "nvim-treesitter/nvim-treesitter-textobjects" -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  use "rhysd/vim-clang-format"              -- https://github.com/rhysd/vim-clang-format
  use "fatih/vim-go"                        -- https://github.com/fatih/vim-go
  use "SirVer/ultisnips"                    -- https://github.com/sirver/UltiSnips
  use "hrsh7th/cmp-nvim-lsp"                -- https://github.com/hrsh7th/cmp-nvim-lsp
  use "hrsh7th/nvim-cmp"                    -- https://github.com/hrsh7th/nvim-cmp
  use "neovim/nvim-lspconfig"               -- https://github.com/neovim/nvim-lspconfig
  use "onsails/lspkind-nvim"                -- https://github.com/onsails/lspkind-nvim
  use "quangnguyen30192/cmp-nvim-ultisnips" -- https://github.com/quangnguyen30192/cmp-nvim-ultisnips
  use "williamboman/nvim-lsp-installer"     -- https://github.com/williamboman/nvim-lsp-installer
  use "numToStr/Comment.nvim"               -- https://github.com/numToStr/Comment.nvim
  use { "kylechui/nvim-surround", tag = "*" }  -- https://github.com/kylechui/nvim-surround
  use "windwp/nvim-autopairs"               -- https://github.com/windwp/nvim-autopairs
  use "mfussenegger/nvim-dap"               -- https://github.com/mfussenegger/nvim-dap
  use {
    "leoluz/nvim-dap-go",                   -- https://github.com/leoluz/nvim-dap-go 
    requires = {
      "mfussenegger/nvim-dap",  
    },
  }
  use "nvim-neotest/nvim-nio"               -- https://github.com/nvim-neotest/nvim-nio
  use { 
    "rcarriga/nvim-dap-ui",                 -- https://github.com/rcarriga/nvim-dap-ui
    requires = { 
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio"
    },
  } 
  use "vijaymarupudi/nvim-fzf"              -- https://github.com/vijaymarupudi/nvim-fzf
  use "ctrlpvim/ctrlp.vim"                  -- https://github.com/ctrlpvim/ctrlp.vim
  use "nvim-lua/plenary.nvim"               -- https://github.com/nvim-lua/plenary.nvim
  use {
    "olexsmir/gopher.nvim",                 -- https://github.com/olexsmir/gopher.nvim
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  }
  use "ellisonleao/glow.nvim"               -- https://github.com/ellisonleao/glow.nvim
  if packer_bootstrap then
    require("packer").sync()
  end
end)
