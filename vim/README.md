```
   ___  ____  ____  _________  ____ ___
  / _ \/ __ \/ __ \/ ___/ __ \/ __ `__ \
 /  __/ / / / /_/ / /__/ /_/ / / / / / /
 \___/_/ /_/\____/\___/\____/_/ /_/ /_/

              _                                  _____
       _   __(_)___ ___        _________  ____  / __(_)___ _
      | | / / / __ `__ \______/ ___/ __ \/ __ \/ /_/ / __ `/
      | |/ / / / / / / /_____/ /__/ /_/ / / / / __/ / /_/ /
      |___/_/_/ /_/ /_/      \___/\____/_/ /_/_/ /_/\__, /
                                                   /____/
```

# vim-config

A minimal vim-config with annotations at just about 100 lines.

## Installation

If you have a current `.vimrc` or `.vim` directory, move them out of the way first:

``` bash
mv ~/.vimrc ~/.vimrc.old
mv ~/.vim ~/.vim.old
```

Then, simply change to the repo's directory and run the install script:

```
cd ~/vim-config # or wherever you cloned it
./install.sh
```

The install script will pull down a small number of plugins. Once the script finishes, vim is ready to go.
