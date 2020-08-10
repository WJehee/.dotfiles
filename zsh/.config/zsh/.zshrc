# Init starship
eval "$(starship init zsh)"

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

# Env
EDITOR="nvim"
GIT_EDITOR="nvim"
VISUAL="nvim"
TERMINAL="alacritty"
TERM="xterm-256color"
BROWSER="firefox-developer-edition"
XDG_CONFIG_HOME="$HOME/.config"

# Prompt

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



