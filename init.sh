#deps
sudo apt update
sudo apt install -y git curl libfuse-dev fuse gcc g++ make ripgrep unzip
#nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim
#lazy
mkdir -p ~/.config/nvim
cp -r ./config/* ~/.config/nvim/
