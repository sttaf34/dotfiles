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
if [ $(uname) = "Darwin" ] ; then
  source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=true
  export PS1="\[\e[1;32m\][\w]\[\e[00m\]\[\e[1;33m\]\$(__git_ps1)\[\e[00m\]\n\$ "
else
  source /c/Users/stride29/Projects/Documents/Commands/git/git-prompt.sh
  export PS1="\[\e[1;32m\][\w]\[\e[00m\]\[\e[1;33m\]$(__git_ps1)\[\e[00m\]\n\$ "
fi

if [ -f ~/Projects/dotfiles/.bashrc_alias ]; then
  source ~/Projects/dotfiles/.bashrc_alias
fi

if [ -f ~/Projects/dotfiles/.bashrc_fzf ]; then
  source ~/Projects/dotfiles/.bashrc_fzf
fi

# history設定
export HISTIGNORE="c:f:d"
