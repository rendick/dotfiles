export ZSH="$HOME/.oh-my-zsh"

alias vi="nvim ."
alias cl="clear"
alias arup="sudo pacman -Syyuu"
alias pw="poweroff"

ZSH_THEME="murilasso"

plugins=(
  git
  battery
)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

RPROMPT='$(battery_pct_prompt) ...'
BATTERY_CHARGING="⚡️"

[ -f "/home/rendick/.ghcup/env" ] && . "/home/rendick/.ghcup/env"
