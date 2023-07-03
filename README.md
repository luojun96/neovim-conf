<h1>Neovim Configuration</h1>

<h2>Table of Contents</h2>

- [Install Nerd Fonts](#install-nerd-fonts)
- [Install Neovim](#install-neovim)
- [Configure Plugins](#configure-plugins)
  - [Setup Plugins](#setup-plugins)
  - [Install GitHub Copilot in Neovim](#install-github-copilot-in-neovim)
    - [Load Copliot Submodule](#load-copliot-submodule)
    - [Configure Copliot in Neovim](#configure-copliot-in-neovim)
    - [Enable GitHub Copilot in Neovim](#enable-github-copilot-in-neovim)
- [Install Language Server Protocol Implementations](#install-language-server-protocol-implementations)
- [References](#references)

# Install Nerd Fonts

- [JetBrains font](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts)

# Install Neovim

We can install neovim from its website <https://neovim.io/>, or install it from packages directly as below:

- macOS

```bash
brew install neovim
```

- Fedora

```bash
sudo dnf install -y neovim python3-neovim
```

# Configure Plugins

## Setup Plugins

```bash
git clone https://github.com/luojun96/neovim-conf
cd neovim-conf
ln -s $PWD/nvim ~/.config/nvim
```

The main installed plugins are listed in `nvim/init.lua` file.

Installed plugins are listed as below by running `PackerStatus` in Neovim:

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

## Install GitHub Copilot in Neovim

### Load Copliot Submodule

```bash
git submodule init
git submodule update
```

### Configure Copliot in Neovim

```bash
:Copilot setup
```

### Enable GitHub Copilot in Neovim

```bash
:Copilot enable
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

# References

- [MarioCarrion](https://github.com/MarioCarrion/videos/tree/main/2023/01/nvim)
