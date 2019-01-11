#! /bin/bash/
echo "Installing JonLuca's Environment"
orig=$(pwd)
# Symlink two important config files
ln -s orig/.zshrc ~
ln -s orig/.sandboxrc ~
ln -s orig/.vimrc ~

# Install sensible vim options
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/sensible.git
vim -u NONE -c "helptags sensible/doc" -c q

# Install brew 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k

# Set up shell
brew install zsh
chsh -s $(which zsh)

mytmpdir=`mktemp -d 2>/dev/null || mktemp -d -t 'mytmpdir'`

cd mytmpdir
git clone git@github.com:powerline/fonts.git
cd fonts
chmod +x ./install.sh
./install.sh
cd orig
rm -rf mytmpdir

# Set up mac config
./.macos

# Set up git settings
./.settings

echo "Done! Remember to setup visudo!"