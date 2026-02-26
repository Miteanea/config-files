#!/bin/bash
sudo apt update
sudo apt upgrade

# update git
sudo apt install git -y

# nvim dependencies to build from source
sudo apt-get install ninja-build gettext cmake curl build-essential git

# clone config repo
mkdir ~/projects/misc -p
cd ~/projects/misc
git clone https://github.com/Miteanea/config-files.git

cp ~/projects/config-files/nvim ~/.config/

# configure wsl to use only wsl path
echo '' | sudo tee -a /etc/wsl.conf
echo '[interop]' | sudo tee -a /etc/wsl.conf
echo 'appendWindowsPath = false' | sudo tee -a /etc/wsl.conf

# exit shell (to apply wsl.conf config)
# separate into different files 
exit
######
######
######

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> /home/dmitric/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"' >> /home/dmitric/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

# install neovim and dependencies
cd ~/projects/misc 
git clone https://github.com/neovim/neovim.git
cd ~/projects/misc/neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# install zig (for neovim)
brew install zig

# install node & npm
brew install node
node -v
npm -v

# install tmux
sudo apt install tmux

# install dotnet
sudo apt-get update && sudo apt-get install -y dotnet-sdk-10.0
sudo apt-get update && sudo apt-get install -y aspnetcore-runtime-10.0

sudo add-apt-repository ppa:dotnet/backports
sudo apt-get update && sudo apt-get install -y dotnet-sdk-9.0
sudo apt-get update && sudo apt-get install -y aspnetcore-runtime-9.0

sudo apt-get update && sudo apt-get install -y dotnet-sdk-8.0
sudo apt-get update && sudo apt-get install -y aspnetcore-runtime-8.0

# install oh-my-bash
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"

# update dotfiles
fileDir="/home/dmitric/projects/misc/config-files/linux_dev_env"
# copy bin files
mkdir ~/bin/scripts -p
cp $fileDir/scripts/* ~/bin/scripts
# source these files

mkdir ~/.config -p
cp $fileDir/.config ~
# innov@ctors => .npmrc / .ssh
