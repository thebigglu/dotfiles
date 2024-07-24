install:
	cp emacs/.emacs.sh ~/
	mkdir -p ~/.config/emacs && cp emacs/init.el ~/.config/emacs/
	sudo apt install cmake libtool libtool-bin

	mkdir -p ~/.config/nvim && cp -r nvim/* ~/.config/nvim/

	mkdir -p ~/.config/kitty && cp -r kitty/* ~/.config/kitty/
