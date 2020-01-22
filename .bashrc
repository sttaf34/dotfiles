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

# ブロンプト -> http://babyp.blog55.fc2.com/blog-entry-663.html
source ~/Projects/Documents/Commands/git/git-prompt.sh
source ~/Projects/Documents/Commands/git/git-completion.bash
GIT_PS1_SHOWUPSTREAM=true
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
if [ $(uname) = "Darwin" ] ; then
  export PS1="\[\e[1;32m\][\w]\[\e[00m\]\[\e[1;33m\]\$(__git_ps1)\[\e[00m\]\n\$ "
else
  export PS1="\[\e[1;32m\][\w]\[\e[00m\]\[\e[1;33m\]\$(__git_ps1)\[\e[00m\]"$'\n\$ '
fi

if [ -f ~/Projects/dotfiles/.bashrc_alias ]; then
  source ~/Projects/dotfiles/.bashrc_alias
fi

if [ -f ~/Projects/dotfiles/.bashrc_fzf ]; then
  source ~/Projects/dotfiles/.bashrc_fzf
fi

# history設定
export HISTIGNORE="c:f:d"

# ~/Projects 下のリポジトリの現在状況を一覧表示
function git-echo-repository-status () {
  find ~/Projects -mindepth 1 -maxdepth 1 -type d | sort | while read line
  do
    cd $line
    git fetch
    if [ "$(__git_ps1)" != " (master=)" ] ; then
      printf "\033[35m$(pwd)\033[m\n" | tr '\n' ' '
      printf "\033[33m$(__git_ps1)\033[m\n"
    fi
  done
}
