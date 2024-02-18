#! /bin/sh

apt -y install zsh
# After the above step you will need to log out of the computer and log back in again
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sudo apt -y install ruby-full
sudo gem install colorls
apt install -y fzf
apt install -y stow
apt install -y highlight
apt install -y htop
apt install -y tig

sudo apt install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user

#Install font
#P10k configure
