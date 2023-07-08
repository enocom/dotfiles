#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

if [[ -s "${ZDOTDIR}/init.zsh" ]]; then
  source "${ZDOTDIR}/init.zsh"
fi

# Source private settings that aren't tracked and are per-machine
if [[ -s "${ZDOTDIR}/private.zsh" ]]; then
  source "${ZDOTDIR}/private.zsh"
fi

function hardmain() {
    git fetch --prune && git reset --hard origin/main
}

function dbr {
    git for-each-ref --format '%(refname:short)' refs/heads |
        grep -v "master\|main" |
        xargs git branch -D
}
