# packer-ubuntu
Use packer to create virtualbox images of ubuntu.

Stating the obvious, this solution assumes packer and virtualbox are already installed. If you are in need of a simple way to do that on the mac, consider the following steps

###Install Homebrew, Cask, VirtualBox, Vagrant, Packer

```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew cask install virtualbox
brew cask install vagrant
brew cask install packer
```

###Building stuff ..
- 'make' will build a ubuntu 14.04 box
- 'make ubuntu-14.10' will build the 14.10 version of the box.
- 'make install-14.10' will add the box to the vagrant cache of known boxes
- make -clean will delete the .box
- make -clobber will call clean and it will delete the local ISOs.
