# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Local and Global vars
dotfiles=~/Documents/Other/dotfiles
export ZSH=~/.oh-my-zsh

# Zsh and Oh-My-Zsh vars
skip_global_compinit=1
ZSH_DISABLE_COMPFIX=true
DISABLE_UNTRACKED_FILES_DIRTY="true"
DEFAULT_USER=jonlucadecaro
HYPHEN_INSENSITIVE="true"
MENU_COMPLETE="true"
DISABLE_UPDATE_PROMPT="true"

source $ZSH/oh-my-zsh.sh
# Oh My Zsh plugins
plugins=(brew osx pip)
# Powerlevel9k Right prompt
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator time)

# Load dotfiles
for file in $dotfiles/.{fzf.zsh,export,alias,functions,inputrc}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done

zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -Uz compinit
compinit

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
