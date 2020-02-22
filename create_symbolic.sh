ln -s ~/Projects/dotfiles/bashrc/.bashrc ~/.bashrc
ln -s ~/Projects/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Projects/dotfiles/.inputrc ~/.inputrc

# https://pqrs.org/osx/karabiner/document.html
# ファイルはアプリからバックアップ等で移動させられるので、
# ディレクトリごとシンボリックにする必要あり
ln -s ~/Projects/dotfiles/karabiner ~/.config

ln -s ~/Projects/dotfiles/vscode/settings.jsonc ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/Projects/dotfiles/vscode/keybindings.jsonc ~/Library/Application\ Support/Code/User/keybindings.json
