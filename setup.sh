# install ibus bamboo
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt update
sudo apt install ibus-bamboo
ibus restart

# Alacritty
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install alacritty

# Git
sudo apt install git

# curl
sudo apt install curl

# Nodejs
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs

# Yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt-get install yarn

# nvim
wget https://github.com/neovim/neovim/releases/download/v0.4.3/nvim.appimage --output-document nvim
chmod +x nvim
sudo chown root:root nvim
sudo mv nvim /usr/bin

# vim-plug for nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ag
sudo apt install silversearcher-ag

sudo npm install -g neovim
sudo apt install python3-pip
python3 -m pip install --user --upgrade pynvim


# NerdFont --> run this then change font of terminal
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

cd

# tmux
sudo apt install tmux

mkdir -p ~/.config/alacritty && touch ~/.config/alacritty/alacritty.yml
touch .tmux.conf

# change watch files
sudo echo fs.inotify.max_user_watches = 524288 >> /etc/sysctl.conf
sudo sysctl -p
