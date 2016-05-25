# ~/.bashrc: executed by bash(1) for non-login shells.

## Colorscheme
source ~/.files/base16-bright.dark.sh

## History
HISTCONTROL=ignoreboth	# Ignore lines starting with whitespace and duplicates
HISTFILE=.history
HISTTIMEFORMAT="%F% %T"
HISTSIZE=10000		# Remember unlimited history
HISTFILESIZE=10000	# Store unlimited history

## Shell Options
shopt -s histappend	# Append to history file
shopt -s checkwinsize	# Update LINES and COLUMNS after each command

## Prompt
export PS1="\n\[\033[38;5;3m\]\w\\$\[\033[38;5;15m\] "

## Aliases

## Platform
case $(uname -s) in
    Darwin)
        echo "OS X"
        SHELL_SESSION_HISTORY=0	#Disable Per-Session Shell Command History

        ## Colors
        export CLICOLOR=1
        export LSCOLORS=ExFxBxDxCxegedabagacad
        ;;

    Linux)
        force_color_prompt=yes
        alias ls="ls --color=auto"
        alias grep="grep --color=auto"
        ;;
esac
