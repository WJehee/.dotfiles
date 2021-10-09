# Path
export PATH=$PATH:$HOME/.scripts/
export PATH=$PATH:$HOME/.cargo/bin/

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

export CARGO_HOME="$XDG_CONFIG_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter

# Disable files
export LESSHISTFILE=-

# Zsh configs
export ZDOTDIR=~/.config/zsh

