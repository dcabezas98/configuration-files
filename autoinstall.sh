# Automatically download, install and configure programs and tools I need

if [ "$1" = "-ssh" ]; then

	# SSH (for Github)
	ssh-keygen -t rsa -b 4096 -C "dxabezas@gmail.com"
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_rsa
	sudo apt-get install xclip
	xclip -sel clip < ~/.ssh/id_rsa.pub
else
	# Git
	mkdir ~/Documents/git 2> /dev/null
	sudo apt install git
	git config --global user.name "David Cabezas Berrido"
	git config --global user.email "dxabezas@gmail.com"

	# Emacs
	sudo add-apt-repository ppa:kelleyk/emacs
	sudo apt-get update
	sudo apt install emacs26
	
	# Configuration files (requires SSH in Github)
	cd ~/Documents/git
	git clone git@github.com:dcabezas98/configuration-files.git
	rm ~/.bashrc 2> /dev/null
	rm ~/.emacs 2> /dev/null
	ln -s ~/Documents/git/configuration-files/.bashrc ~/.bashrc
	ln -s ~/Documents/git/configuration-files/.emacs ~/.emacs
	ln -s ~/Documents/git/configuration-files/.gitconfig ~/.gitconfig

	# Disables requesting user password after suspend
	gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend 'false'
fi
