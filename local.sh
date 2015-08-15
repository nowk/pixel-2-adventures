# Local setup starts here
#
# Assumed Git and Github are all setup at this point

cd ~/

# dotfiles
#
git clone git@github.com:nowk/prospect.git && cd prospect
git checkout pixel-2
cd
ln -s ~/prospect ~/.prospect


# rcs
#
# git
ln -s ~/.prospect/git.config ~/.gitconfig
ln -s ~/.prospect/git.ignore ~/.gitignore_global

# tmux
ln -s ~/.prospect/tmux ~/.tmux.conf

# vim
ln -s ~/.prospect/vim ~/.vim
ln -s ~/.prospect/vimrc ~/.vimrc

# zsh
mv ~/.zshrc ~/.zshrc.before-ln-s
ln -s ~/.prospect/zshrc ~/.zshrc
ln -s ~/.prospect/zshrc.local ~/.zshrc.local

# zsh theme
ln -s ~/.prospect/oh-my-zsh/themes/normalt.zsh-theme ~/.oh-my-zsh/themes/normalt.zsh-theme


# Vundle
#
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


# YouCompleteMe
#
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer --gocode-completer


# terms
#
cd ~/.prospect/terminfo
tic screen-256color-italic.terminfo
tic xterm-256color-italic.terminfo


# Go
#
mkdir ~/opt
cd ~/opt && git clone git@github.com:golang/go.git
cd go && git checkout go1.4.2
cd src && ./all.bash


# btsync
#
cd ~/opt
mkdir -p btsync/bin && cd btsync/bin
wget https://download-cdn.getsyncapp.com/stable/linux-x64/BitTorrent-Sync_x64.tar.gz
tar -xzvf BitTorrent-Sync_x64.tar.gz


# mongodb 3.0
#
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org=3.0.2 mongodb-org-server=3.0.2 mongodb-org-shell=3.0.2 mongodb-org-mongos=3.0.2 mongodb-org-tools=3.0.2


# tig from source
#
sudo apt-get install libncurses-dev
cd ~/opt
git clone git://github.com/jonas/tig.git && cd tig
make prefix=/usr/local
sudo make install prefix=/usr/local
