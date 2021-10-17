# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
stty stop undef		# Disable ctrl-s to freeze terminal.

function host_color {
    case $HOST in
      luukas-t440p) echo red ;;
      t5810-artix) echo blue ;;
      *) echo yellow ;;
    esac
}

PS1="%B%{$fg[red]%}[%{$fg[green]%}%n%{$fg[green]%}@%{$fg[$(host_color)]%}%M %{$fg[yellow]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


HISTSIZE=999999999
SAVEHIST=999999999
HISTFILE=~/.cache/zsh/history
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# Load aliases and shortcuts if existent.
[ -f "~/.config/zsh/shortcutrc" ] && source "~/.config/zsh/shortcutrc"
[ -f "/home/lajp/.config/zsh/aliasrc" ] && source "/home/lajp/.config/zsh/aliasrc"
[ -f "~/.config/zsh/zshnameddirrc" ] && source "~/.config/zsh/zshnameddirrc"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
bindkey '^R' history-incremental-search-backward

echo -ne "\e[1 q"
export PATH=$PATH:~/.local/scripts

# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
