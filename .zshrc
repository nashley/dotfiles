# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' format 'Completing %d...'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*' original false
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %l %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/nick/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd nomatch
unsetopt beep extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
export PATH=$PATH:/home/nick/bin/
alias vim="nvim -p"
bindkey -M vicmd '/' history-incremental-search-backward
export EDITOR=nvim
export KEYTIMEOUT=1
 function zle-line-init zle-keymap-select {
 #    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
 #    RPS2=$RPS1
	zle reset-prompt
#     echo
#     #LPS1=$PROMPT'${${KEYMAP/vicmd/❮%f}/(main|viins)/❯%f} '
}
 zle -N zle-line-init
 zle -N zle-keymap-select

autoload -U promptinit; promptinit
prompt spaceship
#PROMPT='%(?. %F{green}.%F{red}✖%F{green})${${KEYMAP/vicmd/❮%f}/(main|viins)/❯%f} '
#PROMPT='%F{white}%* '$PROMPT
#PROMPT='%(?.%F{green}.%F{red})${${KEYMAP/vicmd/❮%f}/(main|viins)/❯%f} '

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
bindkey "^?" backward-delete-char
