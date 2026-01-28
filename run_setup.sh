#!/bin/bash
sudo apt update

sudo apt upgrade

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> /home/dmitric/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"' >> /home/dmitric/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

sudo apt-get install build-essential

# install zig (for neovim)
brew install zig

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


# install node & npm
brew install node@24
node -v # Should print "v24.13.0".
npm -v # Should print "11.6.2".

# install neovim
brew install neovim

# install tmux
apt install tmux

# install dotnet
sudo apt-get update && sudo apt-get install -y dotnet-sdk-10.0
sudo apt-get update && sudo apt-get install -y aspnetcore-runtime-10.0

sudo add-apt-repository ppa:dotnet/backports
sudo apt-get update && sudo apt-get install -y dotnet-sdk-9.0
sudo apt-get update && sudo apt-get install -y aspnetcore-runtime-9.0

sudo apt-get update && sudo apt-get install -y dotnet-sdk-8.0
sudo apt-get update && sudo apt-get install -y aspnetcore-runtime-8.0

# istall electron


# update dotfiles

fileDir="/mnt/c/Users/dmitric/backup-wsl"

# copy bin files
cp $fileDir/.bash_aliases ~
cp -r $fileDir/bin ~
cp -r $fileDir/.config/* ~/.config/
