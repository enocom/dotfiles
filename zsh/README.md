# Prezto Simplified

This is my simplifcation of [Prezto][prezto].

## Installation

 ```shell
 setopt EXTENDED_GLOB
 for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
 done
 ```

[prezto]: https://github.com/sorin-ionescu/prezto
