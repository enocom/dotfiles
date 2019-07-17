# Completion configuration
# See the man page for zshcompsys for details.
zmodload -i zsh/complist

WORDCHARS=''

bindkey -M menuselect '^o' accept-and-infer-next-history
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories
autoload -U compaudit compinit
compinit -i -C # Initialize the completion system. See the man page for
               # zshcompsys.

# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"
export CLICOLOR=$LSCOLORS
alias grep="grep --color=auto"

HISTSIZE=5000             # How many lines of history to keep in memory
HISTFILE=~/.zsh_history   # Where to save history to disk
SAVEHIST=5000             # Number of history entries to save to disk
setopt APPEND_HISTORY     # Append history to the history file (no overwriting)
setopt SHARE_HISTORY      # Share history across terminals
setopt INC_APPEND_HISTORY # Immediately append to the history file.

autoload -U colors && colors # Make it easy to configure colors in a prompt.
setopt PROMPT_SUBST          # Enable prompt substitution.
function parse_git_dirty_state() {
  local STATUS=''
  STATUS=$(command git status --porcelain 2> /dev/null | tail -n1)
  if [[ -n $STATUS ]]; then
    echo "%{$fg[red]%}*"
  fi
}
local ret_status="%(?:%{$fg_bold[green]%}$ :%{$fg_bold[red]%}$ )"
export PS1='$(parse_git_dirty_state)${ret_status}%{$reset_color%}'

source ~/.zsh_custom # Source untracked settings.
