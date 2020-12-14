export LANG=ja_JP.UTF-8;

# MySQL
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# Google Cloud
export CLOUDSDK_PYTHON="/usr/local/opt/python@3.8/libexec/bin/python"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"

# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1

source ~/Projects/dotfiles/bashrc/.bashrc_color
source ~/Projects/dotfiles/bashrc/.bashrc_prompt
source ~/Projects/dotfiles/bashrc/.bashrc_function
source ~/Projects/dotfiles/bashrc/.bashrc_fzf
source ~/Projects/dotfiles/bashrc/.bashrc_alias
