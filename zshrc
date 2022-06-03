# zsh essentials
# https://ianyepan.github.io/posts/moving-away-from-ohmyzsh/
# a nice prompt
PROMPT='%F{202}b%f%F{208}i%f%F{214}lly%f%F{220}liu%F{221}@%f%F{220}lo%f%F{214}ca%f%F{208}l:%f%F{202}%1~/%f %F{214}%#%f '
# no duplicate history when reverse-searching my commands
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
# case insensitive completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# zsh syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
