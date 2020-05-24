# Set color on new terminal window
(cat ~/.cache/wal/sequences &)

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
PATH=$PATH:$HOME/.gem/ruby/2.7.0/bin

# Colors
declare -A COLORS
COLORS[hostname]="$(xrdb -q | awk '/*.color9/ {print $2}')"
COLORS[separator]="$(xrdb -q | awk '/*.color15/ {print $2}')"
COLORS[path]="$(xrdb -q | awk '/*.color7/ {print $2}')"
COLORS[username]="$(xrdb -q | awk '/*.color3/ {print $2}')"

# Env
EDITOR="nvim"
VISUAL="nvim"
TERMINAL="alacritty"
TERM="xterm-256color"
BROWSER="firefox-developer-edition"
XDG_CONFIG_HOME="$HOME/.config"

# Prompt
PROMPT="%B%F{$COLORS[username]}wouter%f%F{$COLORS[separator]}@%f%F{$COLORS[hostname]}$(hostname)%F%b %F{$COLORS[path]}%~%f %F{$COLORS[separator]}%#%f "

# Zsh syntax highlighting
#declare -A ZSH_HIGHLIGHT_STYLES

#ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=$COLORS[red],bold"

# Command highlighting
#ZSH_HIGHLIGHT_STYLES[alias]="fg=$COLORS[rust],bold"
#ZSH_HIGHLIGHT_STYLES[command]="fg=$COLORS[rust],bold"
#ZSH_HIGHLIGHT_STYLES[builtin]="fg=$COLORS[rust],bold"

#ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="fg=$COLORS[dark-blue]"
#ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="fg=$COLORS[dark-blue]"
#ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=$COLORS[light-blue]"
#ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=$COLORS[light-blue]"
#ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]="fg=$COLORS[light-blue]"
#ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="fg=$COLORS[rust]"

# Path highlighting
#ZSH_HIGHLIGHT_STYLES[path]="fg=$COLORS[light-blue],bold"
#ZSH_HIGHLIGHT_STYLES[path_pathseparator]="fg=$COLORS[rust],bold"
#ZSH_HIGHLIGHT_STYLES[path_prefix]="fg=$COLORS[light-blue]"
#ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]="fg=$COLORS[rust]"

# Functions

ve() {
    ls=$(ls --color=never ~/.python-env/)
    menu="$ls\ndeactivate" 
    choice=$(echo $menu | dmenu -fn "Hack-17")
    if [ "$choice" == "deactivate" ]
    then
	deactivate
    else
	source ~/.python-env/$choice/bin/activate
    fi
}



