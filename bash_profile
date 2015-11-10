#==========================================================================
# Source bashrc and aliases if present
#==========================================================================

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

#==========================================================================
# basic settings
#==========================================================================

# set default editor
export EDITOR=vim

# Make ls use colors
export CLICOLOR=1

#==========================================================================
# History
#==========================================================================

export HISTSIZE=10000 # increase the size
shopt -s histappend # append session commands to .bash_history
