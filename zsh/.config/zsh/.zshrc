
# History 
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Options
setopt appendhistory autocd extendedglob COMPLETE_ALIASES
unsetopt beep nomatch notify

# vi mode in terminal
set -o vi

zstyle ':completion:*' menu select
autoload -Uz compinit
compinit

# Aliases
alias firefox="firefox-developer-edition"
alias la="ls -A"
alias ls="ls --color"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias xclip="xclip -selection clipboard"

# Path
PATH=$PATH:$HOME/.scripts/
PATH=$PATH:$HOME/.cargo/bin/

# Colors
declare -A COLORS
COLORS[rust]="#FF4D26"
COLORS[red]="#CC4743"
COLORS[light]="#24FFEC"
COLORS[light-blue]="#537A99"
COLORS[dark-blue]="#0875CC"

# Env
EDITOR="nvim"
VISUAL="nvim"
TERMINAL="alacritty"
BROWSER="firefox-developer-edition"
XDG_CONFIG_HOME="$HOME/.config"

PROMPT="%B%F{$COLORS[dark-blue]}wouter%f%F{$COLORS[light]}@%f%F{$COLORS[rust]}$(hostname)%F%b %F{$COLORS[light-blue]}%~%f %F{$COLORS[light]}%#%f "

# Zsh syntax highlighting
declare -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=$COLORS[red],bold"

# Command highlighting
ZSH_HIGHLIGHT_STYLES[alias]="fg=$COLORS[rust],bold"
ZSH_HIGHLIGHT_STYLES[command]="fg=$COLORS[rust],bold"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=$COLORS[rust],bold"

ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="fg=$COLORS[dark-blue]"
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="fg=$COLORS[dark-blue]"
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=$COLORS[light-blue]"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=$COLORS[light-blue]"
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]="fg=$COLORS[light-blue]"
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="fg=$COLORS[rust]"

# Path highlighting
ZSH_HIGHLIGHT_STYLES[path]="fg=$COLORS[light-blue],bold"
ZSH_HIGHLIGHT_STYLES[path_pathseparator]="fg=$COLORS[rust],bold"
ZSH_HIGHLIGHT_STYLES[path_prefix]="fg=$COLORS[light-blue]"
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]="fg=$COLORS[rust]"


