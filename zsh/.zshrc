HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

autoload -Uz compinit
compinit

eval "$(starship init zsh)"

alias ls='eza --icons --group-directories-first'
alias ll='eza -l --header --git --icons --group-directories-first'
alias la='eza -la --header --git --icons --group-directories-first'
alias lt='eza --tree --level=2 --icons'
