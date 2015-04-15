# Vim stuff

#Create symlinks:
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# Get submodules
git submodule update --init

# Upgrade all submodules
git submodule foreach git pull origin master
