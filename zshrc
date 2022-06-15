# zsh essentials
# inspired from https://ianyepan.github.io/posts/moving-away-from-ohmyzsh/

# Add git status
# https://salferrarello.com/zsh-git-status-prompt/
autoload -Uz vcs_info
precmd() { vcs_info }
setopt PROMPT_SUBST
RPROMPT='%F{red}${vcs_info_msg_0_}%f'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

# A nice prompt
PROMPT='%F{202}b%f%F{208}i%f%F{214}lly%f%F{220}liu%F{221}@%f%F{220}lo%f%F{214}ca%f%F{208}l:%f%F{202}%1~/%f %F{214}%#%f '

# Colorized ls output
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxEgEdabagacad
alias ls='ls -G'
alias ll='ls -alG'

# No duplicate history when reverse-searching my commands
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Case insensitive completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Select with arrow keys
zstyle ':completion:*:*:*:*:*' menu select

# Faster autocompletion
zstyle ':completion::complete:*' use-cache 1

# zsh syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
