# ~/.bashrc: executed by bash(1) for non-login shells.

## Colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

## History
HISTCONTROL=ignoreboth	# Ignore lines starting with whitespace and duplicates
HISTFILE=.history
HISTTIMEFORMAT="%F% %T"
HISTSIZE=-1		# Remember unlimited history
HISTFILESIZE=-1		# Store unlimited history

## Shell Options
shopt -s histappend	# Append to history file
shopt -s checkwinsize	# Update LINES and COLUMNS after each command

## Prompt
export PS1="\n\[\033[38;5;3m\]\w\\$\[\033[38;5;15m\] "

## Aliases

