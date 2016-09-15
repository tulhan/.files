# ~/.bashrc: executed by bash(1) for non-login shells.

## Colorscheme
source ~/.files/base16-bright.dark.sh

## History
HISTCONTROL=ignoreboth	# Ignore lines starting with whitespace and duplicates
HISTFILE=.history
HISTTIMEFORMAT="%F% %T"
HISTSIZE=10000      # Remember unlimited history
HISTFILESIZE=10000  # Store unlimited history

## Shell Options
shopt -s histappend	# Append to history file
shopt -s checkwinsize	# Update LINES and COLUMNS after each command

## Prompt
export PS1="\n\[\033[38;5;3m\]\w\\$\[\033[38;5;15m\] "

## Aliases

## Functions

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}


## Platform
case $(uname -s) in
    Darwin)
        SHELL_SESSION_HISTORY=0 #Disable Per-Session Shell Command History

        ## Colors
        export CLICOLOR=1
        export LSCOLORS=ExFxBxDxCxegedabagacad
        export PATH="/usr/local/sbin:$PATH"
        ;;

    Linux)
        force_color_prompt=yes
        alias ls="ls --color=auto"
        alias grep="grep --color=auto"
        ;;
esac
