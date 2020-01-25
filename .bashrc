export LANG=ja_JP.UTF-8;

# MySQL for Mac
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# nodenv for Mac
if [ $(uname) = "Darwin" ] ; then
  export PATH="$HOME/.nodenv/bin:$PATH"
  eval "$(nodenv init -)"
fi

source ~/Projects/dotfiles/.bashrc_color
source ~/Projects/dotfiles/.bashrc_prompt
source ~/Projects/dotfiles/.bashrc_function
source ~/Projects/dotfiles/.bashrc_fzf
source ~/Projects/dotfiles/.bashrc_alias
