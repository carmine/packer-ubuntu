# packer-ubuntu
Use packer to create virtualbox images of ubuntu.

Stating the obvious, this solution assumes packer and virtualbox are already installed. If you are in need of a simple way to do that on the mac, consider the following steps

*Install Homebrew, Cask, VirtualBox, Vagrant, Packer*

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew cask install virtualbox
brew cask install vagrant
brew cask install packer
