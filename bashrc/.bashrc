export LANG=ja_JP.UTF-8;

# MySQL for Mac
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# nodenv for Mac
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

export BASH_SILENCE_DEPRECATION_WARNING=1

source ~/Projects/dotfiles/bashrc/.bashrc_color
source ~/Projects/dotfiles/bashrc/.bashrc_prompt
source ~/Projects/dotfiles/bashrc/.bashrc_function
source ~/Projects/dotfiles/bashrc/.bashrc_fzf
source ~/Projects/dotfiles/bashrc/.bashrc_alias
