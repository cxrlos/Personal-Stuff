# Powerline config
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Base config
ENABLE_CORRECTION="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting golang)

export ZSH="/home/cxrlos/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME="powerlevel10k/powerlevel10k"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
 
# Had a MacBook, self explanatory 
alias open='xdg-open'
alias vi='nvim'
alias vim='nvim'

# Vim syntax, cuz emacs syntax sux
set -o vi

# Screenfetch prompt
neofetch

# Disabled correction because I started using thefuck
unsetopt correct_all
eval $(thefuck --alias)
