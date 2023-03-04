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

# Fix java issue with android-studio / Jetbrains IDE's
export _JAVA_AWT_WM_NONREPARENTING=1

# Configure programs

# Pfetch
export PF_INFO="ascii title os kernel editor shell uptime pkgs memory palette"
export PF_COL1="2"		# Color of labels
export PF_COL2=""		# Color of data
export PF_COL3="1"		# Color of title

# Clean up home
export XDG_CONFIG_HOME="$HOME/.config"

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
export GHCUP_USE_XDG_DIRS=true
export CABAL_CONFIG="$XDG_CONFIG_HOME"/cabal/config
export CABAL_DIR="$XDG_CACHE_HOME"/cabal
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export CONDARC="$XDG_CONFIG_HOME/conda/condarc"
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle

export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"

# Disable files
export LESSHISTFILE=-

# Zsh configs
export ZDOTDIR=~/.config/zsh

# Only run on framework to scale programs up
if [ $(hostname) = rustyLaptop ]
then
    export GDK_SCALE=1.5
    export GDK_DPI_SCALE=0.75
    export QT_AUTO_SCREEN_SET_FACTOR=0
    export QT_SCALE_FACTOR=1.5
    export QT_FONT_DPI=72
    xrdb -merge $XDG_CONFIG_HOME/X11/.Xresources
    xrdb -merge $XDG_CONFIG_HOME/X11/double
fi

