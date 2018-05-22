#! /bin/bash/
echo "Installing JonLuca's Environment"
orig=$(pwd)
# Symlink two important config files
ln -s `pwd`/.zshrc ~
ln -s `pwd`/.sandboxrc ~

# Install brew 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Set up shell
brew install zsh
chsh -s $(which zsh)

# set up theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

mkdir /tmp/rand123999
cd /tmp/rand123999
git clone git@github.com:powerline/fonts.git
cd fonts
chmod +x ./install.sh
./install.sh
cd orig
# Set up mac config
./.macos

echo "Done! Remember to setup visudo"