# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Colour for man pages
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
