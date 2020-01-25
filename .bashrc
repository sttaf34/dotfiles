export LANG=ja_JP.UTF-8;

# 色の表がある -> http://nemoplus.hateblo.jp/entry/20090119/1232373540
export CLICOLOR=1
export LSCOLORS=fxGxbxdxbxegedabagacad

# MySQL for Mac
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# nodenv for Mac
if [ $(uname) = "Darwin" ] ; then
  export PATH="$HOME/.nodenv/bin:$PATH"
  eval "$(nodenv init -)"
fi

# プロンプト用のGitの設定
source ~/Projects/Documents/Commands/git/git-prompt.sh
source ~/Projects/Documents/Commands/git/git-completion.bash
GIT_PS1_SHOWUPSTREAM=true
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true

# 色定義
source ~/Projects/dotfiles/.bashrc_color

# ブロンプト -> https://qiita.com/white_aspara25/items/935d789ec6b242e37e87
if [ $(uname) = "Darwin" ] ; then
  export PS1="${_GREEN}[\w]${_RESET}${_YELLOW}\$(__git_ps1)${_RESET}\n\$ "
else
  export PS1="\[\e[1;32m\][\w]\[\e[00m\]\[\e[1;33m\]\$(__git_ps1)\[\e[00m\]"$'\n\$ '
fi

source ~/Projects/dotfiles/.bashrc_function
source ~/Projects/dotfiles/.bashrc_fzf
source ~/Projects/dotfiles/.bashrc_alias
