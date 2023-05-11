##
# Add an "alert" alias for long running commands. Use like so:
#   sleep 10; alert
##
if [ $(which notify-send) ]; then
    alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
fi


##
# grep and friends
##

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


##
# ip
##

alias ip='ip --color=auto'


##
# ls
##

alias ls='ls --color=auto --literal'

alias l='ls -C --classify'
alias la='ls --almost-all'
alias ll='ls --all --classify -l'


##
# Colour for man pages
##

man() {
    env \
        LESS_TERMCAP_md=$'\e[1;36m'    \
        LESS_TERMCAP_me=$'\e[0m'       \
        LESS_TERMCAP_se=$'\e[0m'       \
        LESS_TERMCAP_so=$'\e[1;40;92m' \
        LESS_TERMCAP_ue=$'\e[0m'       \
        LESS_TERMCAP_us=$'\e[1;32m'    \
        man "$@"
}
