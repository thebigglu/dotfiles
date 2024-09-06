install:
	mkdir -p ~/.config/emacs && cp -r emacs/* ~/.config/emacs/
	mkdir -p ~/.config/nvim && cp -r nvim/* ~/.config/nvim/
	mkdir -p ~/.config/kitty && cp -r kitty/* ~/.config/kitty/
deps:
	sudo apt install cmake libtool libtool-bin
