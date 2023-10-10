# Zsh Config

# Powerlevel10k instant
 # if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
 #     source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
 # fi

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Paths
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export DOTNET_ROOT=$HOME/.dotnet

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/anaconda3/bin
export PATH=$PATH:$HOME/.bun/bin

# Keybindings
bindkey -s '^t' "tmuxsessionizer\n"
bindkey -s '^w' "gotoconf\n"
bindkey "\e[1;3C" forward-word
bindkey "\e[1;3D" backward-word

# Source
source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
# source ~/.zsh-plugins/powerlevel10k/powerlevel10k.zsh-theme

# P10k
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Starship
eval "$(starship init zsh)"

# bun completions
[ -s "/home/try/.bun/_bun" ] && source "/home/try/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
