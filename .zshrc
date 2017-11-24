export ZSH=/Users/jonlucadecaro/.oh-my-zsh

DEFAULT_USER=jonlucadecaro
ZSH_THEME="powerlevel9k/powerlevel9k"
HYPHEN_INSENSITIVE="true"
MENU_COMPLETE="true"

plugins=(git autojump brew command-not-found common-aliases encode64 history osx pip pod urltools web-search wd zsh-iterm-touchbar)

source $ZSH/oh-my-zsh.sh


[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator command_execution_time background_jobs history time)
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

for file in /Users/jonlucadecaro/Documents/Other/dotfiles/.{fzf.zsh,inputrc,export,alias,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
