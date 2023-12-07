#deps
sudo apt update
sudo apt install -y git curl libfuse-dev fuse gcc g++ make unzip trash-cli zellij ripgrep
#nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rust.sh
chmod +x rust.sh
./rust.sh -y
source "$HOME/.cargo/env"
# zellij
wget https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
tar -xvf zellij*.tar.gz
chmod +x zellij
sudo mv zellij /usr/local/bin/zellij
mkdir ~/.config/zellij
echo pane_frames false > ~/.config/zellij/config.kdl
# astronvim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
