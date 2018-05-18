export ZSH=~/.oh-my-zsh
source ~/Documents/Other/dotfiles/sandboxd

DEFAULT_USER=jonlucadecaro
ZSH_THEME="powerlevel9k/powerlevel9k"
HYPHEN_INSENSITIVE="true"
MENU_COMPLETE="true"
DISABLE_UPDATE_PROMPT="true"
plugins=(brew osx pip)

source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator time)

for file in ~/Documents/Other/dotfiles/.{fzf.zsh,export,alias,functions,inputrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;