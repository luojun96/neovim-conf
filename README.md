<h1>Neovim Configuration</h1>

<h2>Table of Contents</h2>

- [Install Nerd Fonts](#install-nerd-fonts)
- [Install Neovim](#install-neovim)
- [Install Language Server Protocol Implementations](#install-language-server-protocol-implementations)
- [Configure Plugins](#configure-plugins)
- [Enable GitHub Copilot in Neovim](#enable-github-copilot-in-neovim)
- [References](#references)

# Install Nerd Fonts

- [JetBrains font](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts)

# Install Neovim

We can install neovim from its website <https://neovim.io/>, or install it from packages directly as below:

- macOS

```bash
brew install neovim

ln -s $PWD/nvim ~/.config/nvim
```

- Fedora

```bash
sudo dnf install -y neovim python3-neovim
ln -s $PWD/nvim ~/.config/nvim
```

# Install Language Server Protocol Implementations

- [Go: gopls](https://github.com/golang/tools/tree/master/gopls)
  
```bash
go install golang.org/x/tools/gopls@latest
```

- [Python](https://github.com/microsoft/pyright)

```bash
brew install pyright
```

# Configure Plugins

The installed plugins are listed in `nvim/init.lua` file.

Installed plugins are list as below:

- Comment.nvim
- barbar.nvim
- catppuccin
- cmp-nvim-lsp
- cmp-nvim-ultisnips
- csv.vim
- ctrlp.vim
- gitsigns.nvim
- lspkind-nvim
- lualine.nvim
- nvim-autopairs
- nvim-cmp
- nvim-dap
- nvim-dap-go
- nvim-fzf
- nvim-lsp-installer
- nvim-lspconfig
- nvim-surround
- nvim-tree.lua
- nvim-treesitter
- nvim-treesitter-textobjects
- nvim-web-devicons
- packer.nvim
- plenary.nvim
- telescope-fzf-native.nvim
- telescope.nvim
- ultisnips
- vim-clang-format
- vim-go

# Enable GitHub Copilot in Neovim

- Download Copliot [GitHub Copilot](https://docs.github.com/en/copilot/getting-started-with-github-copilot/getting-started-with-github-copilot-in-neovim)

```bash
git clone https://github.com/github/copilot.vim \
   ~/.config/nvim/pack/github/start/copilot.vim
```

- Configure GitHub Copilot in Neovim

```bash
:Copilot setup
```

- Enable GitHub Copilot in Neovim

```bash
:Copilot enable
```

# References

- [MarioCarrion](https://github.com/MarioCarrion/videos/tree/main/2023/01/nvim)
