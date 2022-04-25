# Path
export PATH=$PATH:$HOME/.scripts/
export PATH=$PATH:$HOME/.cargo/bin/
export PATH=$PATH:/usr/bin/jq
export PATH=$PATH:$HOME/.local/bin

# Default programs
export EDITOR="nvim"
export GIT_EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export TERM="xterm-256color"
export BROWSER="firefox-developer-edition"

# Configure programs

# Pfetch
export PF_INFO="ascii title os kernel editor shell uptime pkgs memory palette"
export PF_COL1="2"		# Color of labels
export PF_COL2=""		# Color of data
export PF_COL3="1"		# Color of title

# Clean up home
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="/run/user/1000"

export CARGO_HOME="$XDG_CONFIG_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export GOPATH="$XDG_DATA_HOME"/go
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export STACK_ROOT="$XDG_DATA_HOME"/stack
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export LEIN_HOME="$XDG_DATA_HOME"/lein

export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority

# Disable files
export LESSHISTFILE=-

# Zsh configs
export ZDOTDIR=~/.config/zsh

