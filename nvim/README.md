# neovim

* [JetBrains font](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts)

## Install

macOS
```
brew install neovim

ln -s $PWD ~/.config/nvim
```

Fedora
```
sudo dnf install -y neovim python3-neovim
ln -s $PWD ~/.config/nvim
```

## Language Server Protocol Implementations

* [Go: gopls](https://github.com/golang/tools/tree/master/gopls)
```
go install golang.org/x/tools/gopls@latest
```

* [Python](https://github.com/microsoft/pyright)

```
brew install pyright
```

## Enable GitHub Copilot in Neovim
* [GitHub Copilot](https://docs.github.com/en/copilot/getting-started-with-github-copilot/getting-started-with-github-copilot-in-neovim)
```
git clone https://github.com/github/copilot.vim \
   ~/.config/nvim/pack/github/start/copilot.vim
```

* Configure GitHub Copilot
```
:Copilot setup
```

* Enable GitHub Copilot
```
:Copilot enable
```
