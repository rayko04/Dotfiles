#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias steam='flatpak run com.valvesoftware.Steam'

source /home/ryan/.config/broot/launcher/bash/br
source /usr/share/nvm/init-nvm.sh
#source /home/ryan/codin/bash/prac/macro.sh
#source /home/ryan/codin/bash/prac/mcd.sh
#source /home/ryan/codin/bash/prac/calculator.sh

if [[ $XDG_SESSION_TYPE != "tty" ]]; then
	neofetch
fi

mcd() {
    mkdir -p "$1" && cd "$1"
}

#PS1='[\u@\h \w]\$ '
PS1="\[\033[0;31m\][\u \w]\$ \[\033[0;37m\]"


export PATH=~/bin:"$PATH"
. "$HOME/.cargo/env"
