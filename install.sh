#!/bin/sh
set -e

echo "=== Installing..."

if [[ -e $HOME/.bash_profile || -e $HOME/.aliases ]]; then
  echo "Error: Either ~/.bash_profile or ~/.aliases already exists."
  echo "Rename the files and then try again."
  exit 1
fi

echo "=== Creating symbolic links for bash profile and aliases"
ln -s $PWD/bash_profile $HOME/.bash_profile
ln -s $PWD/aliases $HOME/.aliases

echo "=== Installation Successful"
