# Local setup starts here
#
# Assumed Git and Github are all setup at this point

cd ~/

# TODO dotfiles
# git clone git@github.com:nowk/prospect.git
# TODO rc links

# terms
#
cd ~/.prospect/terms
tic screen-256color-italic.terminfo
tic xterm-256color-italic.terminfo


# TODO install Vim plugins


# Go
#
mkdir ~/opt
cd ~/opt
git clone git@github.com:golang/go.git

cd go
git checkout go1.4.2

cd src
./all.bash


# If required to build tig from source will need ncurses
sudo apt-get install libncurses-dev
