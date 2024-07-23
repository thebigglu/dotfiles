install:
	mkdir -p ~/.config/nvim && cp -r nvim/* ~/.config/nvim/
	mkdir -p ~/.config/emacs && cp emacs/init.el ~/.config/emacs/
	cp emacs/.emacs.sh ~/
	mkdir -p ~/.config/kitty && cp -r kitty/* ~/.config/kitty/
	# sudo apt install cmake libtool libtool-bin
