# Introduction

Here are a handful of dotfiles set up to my taste.

# Installation

First, clone the repo:

```
git clone https://github.com/enocom/dotfiles.git
```

After navigating to the repo's root directory, link the `bash_profile` and `aliases` with the handy `install.sh` script.

```
cd dotfiles
./install.sh
```

# Odds and Ends

There is no `bashrc` file in this repository, although the `bash_profile` will attempt to source a `.bashrc` file if it exists in the home directory. I put various `PATH` assignments and temporary environment variables in the `.bashrc` and leave it outside of the repo here so as to avoid polluting these files with arbitrary and passing experiments.

The `colors` file is an executable script to show all colors in a terminal profile. Run it with:

```
./colors
```

If you look in the `terminal_profiles` directory, you will find three good color profiles for Terminal.app in OS X and as well as a good color profile for iTerm.app.
