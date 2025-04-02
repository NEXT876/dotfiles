#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias code="code --enable-features=WaylandWindowDecorations --ozone-platform=wayland"
PS1='[\u@\h \W]\$ '


###################
##bash extensions##
###################

#Ble.sh
source /usr/share/blesh/ble.sh

#zoxide
eval "$(zoxide init bash)"


# starship
#colorscript -e 45 # tipe colorscript --help #komische muster
eval "$(starship init bash)"

#bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#fzf
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
# ctrl+r (suche in history)	ctrl+T (suche in dateien)



#####################
#####################

bind 'set enable-bracketed-paste on'

# Ignoriere doppelte Befehle und Befehle mit Leerzeichen am Anfang
export HISTCONTROL=ignoreboth:erasedups

fastfetch -c .config/fastfetch/archlogo.jsonc

