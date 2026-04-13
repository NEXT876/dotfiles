# Source global definitions
[ -f /etc/bashrc ] && source /etc/bashrc

# wallpaper wechseln
alias wallpaper='cd /home/benw/Bilder/Wallpaper && ./wallpaper_change.sh choice'

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
