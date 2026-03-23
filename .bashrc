# Source global definitions
[ -f /etc/bashrc ] && source /etc/bashrc

# cd aliase
alias bsys='cd /home/bwaibel/Dokumente/HTWG-Konstanz-Aufgaben/3.Semester/BSYS/'
alias SE='cd /home/bwaibel/Dokumente/HTWG-Konstanz-Aufgaben/3.Semester/Sofware_Engeneering/'
alias werwolf='cd /home/bwaibel/Dokumente/GitHub/werwolf'

#git alias
alias cleanup="git fetch --all --prune && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D"



# zoxide
eval "$(zoxide init bash)"

# Starship Prompt
eval "$(starship init bash)"

# ble.sh
[ -f ~/.local/share/blesh/ble.sh ] && source ~/.local/share/blesh/ble.sh

# User-specific PATH
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

#scala
export PATH="$PATH:$HOME/.local/share/coursier/bin"

# History-Optimierung
export HISTCONTROL=ignoreboth:erasedups

# Enable safe paste mode
#bind 'set enable-bracketed-paste on'

# Kitty Shell Integration
#[ -n "$KITTY_SHELL_INTEGRATION" ] && source <(kitty + complete setup bash)

# User-specific aliases & functions
#if [ -d ~/.bashrc.d ]; then
#   for rc in ~/.bashrc.d/*; do
#      [ -f "$rc" ] && source "$rc"
# done
#fi
#unset rc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/bwaibel/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/bwaibel/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/bwaibel/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/bwaibel/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<


