# dotfiles

This is a collection of useful odds and ends. I try to keep the files
here as minimal as possible.

## Current tools:

- [Alacritty][alacritty]
- [Zsh][zsh] configured with a simplified version of [Prezto][prezto]
- [Neovim][neovim] with Lua-based configuration
- [tmux][]

[alacritty]: https://alacritty.org
[neovim]: https://neovim.io
[prezto]: https://github.com/sorin-ionescu/prezto
[tmux]: https://github.com/tmux/tmux/wiki
[zsh]: https://www.zsh.org

## Installation

``` shell
# NeoVim installation
ln -s ~/workspace/dotiles/nvim ~/.config/nvim

# Zsh setup
ln -s ~/workspace/dotfiles/zsh/runcoms/zpreztorc ~/.zpreztorc
ln -s ~/workspace/dotfiles/zsh/runcoms/zprofile ~/.zprofile
ln -s ~/workspace/dotfiles/zsh/runcoms/zshenv ~/.zshenv
ln -s ~/workspace/dotfiles/zsh/runcoms/zshrc ~/.zshrc

# tmux setup
ln -s ~/workspace/dotfiles/tmux.conf ~/.tmux.conf
```
