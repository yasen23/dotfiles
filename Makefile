install: install-vim \
	install-git

install-vim:
	ln -s `pwd`/.vim ~/.vim
	ln -s `pwd`/.vimrc ~/.vimrc

install-git:
	ln -s `pwd`/.gitconfig ~/.gitconfig
