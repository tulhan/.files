# ~/.bashrc: executed by bash(1) for non-login shells.

## Sensible Bash Defaults
SENSIBASH=~/files/include/sensible.bash
if [ -f $SENSIBASH ]; then
    source $SENSIBASH
fi

## Colorscheme
source ~/.files/include/base16-bright.dark.sh

## History
HISTFILE=~/.history

## Prompt
export PS1="\n\[\033[38;5;3m\]\w\\$\[\033[38;5;15m\] "

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


## Enable Color
force_color_prompt=yes
alias ls="ls --color=auto"
alias grep="grep --color=auto"
