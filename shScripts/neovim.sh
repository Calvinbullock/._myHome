#!/bin/bash
#Source: https://github.com/drewgrif/bookworm-scripts/blob/main/neovim.sh

#Build prerequisites
sudo apt install ninja-build gettext cmake unzip curl

cd $HOME/documents/build

# clone
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb
