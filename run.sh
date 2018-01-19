#!/usr/bin/env bash

if [[ "$OSTYPE" != "darwin"* ]]; then
	echo -e "\nThis is not a Mac, mate!!\n"
fi

## Configuration ##

if [[ -x /usr/local/bin/brew ]]; then
  # Install ruby
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew analytics off
  brew doctor

  brew install \
  grip \
  bash \
  tmux \
  reattach-to-user-namespace \
  nmap \
  git \
  gpg \
  tree \
  jq \
  'gnu-sed' \
  pstree \
  'youtube-dl' \
  qpdf \
  wget \
  watch \
  ghostscript

  # Install python
  brew install \
  python \
  python3

  # Install autojump
  brew install autojump

  # Install brew-cask-upgrade
  brew tap buo/cask-upgrade

  # Install Virtualbox and extension pack
  brew install \
  Caskroom/cask/virtualbox
  Caskroom/cask/virtualbox-extension-pack

  # Install vagrant
  brew install \
  Caskroom/cask/vagrant \
  Caskroom/cask/vagrant-manager

  # Install vagrant plugins
  vagrant plugin install sandbox


  # Install stuff
  brew cask install \
  evernote \
  sourcetree \
  spotify \
  keepassx \
  authy-desktop \
  adobe-acrobat-reader \
  docker \
  suspicious-package \
  kindle \
  paintbrush \
  pixi-paint \
  1clipboard \
  dropbox \
  google-backup-and-sync\
  skype \
  skype-for-business \
  vlc \
  elmedia-player \
  skitch \
  timer \
  android-file-transfer \
  filezilla \
  numi \
  airdroid \
  cord \
  thunderbird
fi

brew update
