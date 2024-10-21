# Setup

git init --bare $HOME/.cfgstore
alias cfg='/usr/bin/git --git-dir=$HOME/.cfgstore/ --work-tree=$HOME'
cfg config --local status.showUntrackedFiles no
funcsave cfg


# Use

cfg add ~/.config/kitty
cfg commit -m "add kitty config"
cfg push


# Restore (on new machine)

alias cfg='/usr/bin/git --git-dir=$HOME/.cfgstore/ --work-tree=$HOME'
funcsave cfg
git clone --bare git@github.com:fotonmoton/.dotfiles.git $HOME/.cfgstore
echo ".cfgstore" >> .gitignore
cfg config --local status.showUntrackedFiles no
cfg checkout


# Conflict resolution

mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
