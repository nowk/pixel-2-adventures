# > USE AT YOUR OWN RISK
# > YOU BREAK IT YOU BUY IT

# Install crouton
#
# Follow general steps in any walkthrough, then proceed

# WARNING do not mess with python, unless you know what you are doing. Many, many
# things will come to depend on it and breaking any linkage will cause agita.

# apt-get
#
sudo apt-get update
sudo apt-get upgrade


# development basics
#
sudo apt-get install curl wget
sudo apt-get install build-essential cmake
sudo apt-get install git-core


# add-apt-repository
#
sudo apt-get install software-properties-common python-software-properties
sudo apt-get python-dev python-pip


# neovim
#
# sudo add-apt-repository ppa:neovim-ppa/unstable
# sudo apt-get update
# sudo apt-get install neovim
# pip install --user neovim


# vim
#
# this can vary based on requirements, but I found vim-gnome is the "fat" version
# and contains pretty much all the +flags, particularly +clipboard
#
# sudo apt-get install vim
# sudo apt-get install vim-gtk
sudo apt-get install vim-gnome


# tmux
#
sudo apt-get install tmux


# zsh
#
sudo apt-get install zsh


# oh-my-zsh
#
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
chsh -s $(which zsh) # you will most likely be prompted for a password

# must logout/login to see zsh change

# Change your terminal settings to encode in UTF-8 or you'll get some funky texts
# and artifacting


# FIXME I might have missed some apt-gets, will need to pick those up next time around

# after this it's all you
#
# TODO setup ssh key
# TODO install dotfiles
# TODO install Vim plugins
# TODO install golang

# If required to build tig from source will need ncurses
sudo apt-get install libncurses-dev
