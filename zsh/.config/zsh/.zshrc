# Options
setopt appendhistory autocd extendedglob COMPLETE_ALIASES PROMPT_SUBST
unsetopt beep nomatch notify

zstyle ':completion:*' menu select
autoload -Uz compinit
compinit
_comp_options+=(globdots)

bindkey -v
export KEYTIMEOUT=1

# Prompt
PROMPT="%F{red}%n%F{blue}@%F{green}%M%F{red}%# "

# Aliases
alias firefox="firefox-developer-edition"
alias la="ls -A"
alias ls="ls --color"
alias ll="ls -Al"
alias vim="nvim"
alias xclip="xclip -selection clipboard"
alias ...="../../"
alias ssh="TERM=xterm-color ssh"
alias dl-audio="youtube-dl -f best -x --audio-format mp3"
alias makedoc='pandoc -M date="`date "+%d %B %Y"`" --toc'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'

# Functions

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

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

# Syntax highlighting, should be add the end
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

