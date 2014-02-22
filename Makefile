install: install-vim \
	  install-git

install-vim:
		ln -s .vim ~/.vim
		ln -s .vimrc ~/.vimrc

install-git:
		ln -s .gitconfig ~/.gitconfig
