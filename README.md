# dotfiles

Here are a handful of dotfiles set up to my taste.

The `zshenv` file is barebones zsh config. For a richer config, see
[prezto](https://github.com/sorin-ionescu/prezto).

For a great terminal emulator, see
[Alacritty](https://github.com/jwilm/alacritty).

## Term info

To enable true color use:

```
tic -x -o ~/.terminfo xterm-24bit.terminfo
```

And then:

```
export TERM=xterm-24bit
```

Add the following to the tmux config:

```
set -g default-terminal "xterm-24bit"
set -g terminal-overrides ',xterm-24bit:Tc'
```

And add:

```
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
```
