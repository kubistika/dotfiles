# Created by newuser for 5.5.1
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle :compinstall filename '/home/kobi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# bind home & end keys
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# some exports
export GOPATH=$HOME/code/go

alias ls='ls --color=auto --group-directories-first -h'
alias vim='nvim'
alias vi='nvim'

alias -g kbd_backlight="/bin/bash /usr/local/share/kbd_backlight"

# enable caching

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

setopt prompt_subst

# configure ps1
PROMPT="%F{orange}[%F{magenta}%n%f@%F{cyan}%m%F{orange} %1~]%f "

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%F{yellow}[NORMAL]%f"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

export KEYTIMEOUT=1
