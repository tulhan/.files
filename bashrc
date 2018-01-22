# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

## Sensible Bash Defaults
SENSIBASH=~/files/include/sensible.bash
if [ -f $SENSIBASH ]; then
    source $SENSIBASH
fi

[[ -f /etc/bash_completion ]] && . /etc/bash_completion

# Don't wait for job termination notification
set -o notify

## Colorscheme
source ~/.files/include/base16-bright.dark.sh

## History
HISTFILE=~/.history

## Prompt
export PS1="\n\[\033[38;5;3m\]\w\\$\[\033[38;5;15m\] "

## Aliases
alias ls='ls -F --color=auto'
