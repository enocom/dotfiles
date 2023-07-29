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
# Set the ZDOTDIR to the zsh directory wherever it is on disk
sudo touch /etc/zshenv
sudo echo 'export ZDOTDIR="${HOME}/workspace/dotfiles/zsh"' >> /etc/zsh/zshenv

# tmux setup
ln -s ~/workspace/dotfiles/tmux.conf ~/.tmux.conf
```
