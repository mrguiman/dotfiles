# Synchronise repositories and update packages 
sudo pacman -Syu
# Enable AUR
sudo sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf

# General stuff
sudo pacman -S fastfetch --needed

#
#   SWAY + Utilities
#
echo "Install sway and utilities ?"
read sway
if [[ "$sway" = "y" ]]; then
    sudo pacman -Sy sway
    sudo pacman -Sy slurp # useful for screenshotting
    sudo pacman -Sy grim # useful for screenshotting

    # Utilities below supplement waybar / offer some GUI options
    sudo pacman -S wl-clipboard --noconfirm
    sudo pacman -S pavucontrol --noconfirm
    sudo pacman -S blueman --noconfirm
    sudo pacman -S otf-font-awesome --noconfirm
    sudo pamac install sway-audio-idle-inhibit-git --no-confirm
fi

# Interactive Installs
echo "Install Neovim (y/n)?"
read neovim 
if [[ "$neovim" = "y" ]]; then
	sudo pacman -S neovim --needed --noconfirm
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi
echo "Install Bat (superpowered cat) (y/n)?"
read bat
[ "$bat" = "y" ] && sudo pacman -S bat --needed --noconfirm
echo "Install Firefox (y/n)?"
read firefox
[ "$firefox" = "y" ] && sudo pacman -S firefox --needed --noconfirm
echo "Install Code (Open Source VScode Build) (y/n)?"
read vscode
[ "$vscode" = "y" ] && sudo pamac install code --no-confirm
echo "Install Kitty (y/n)?"
read kitty 
[ "$kitty" = "y" ] && sudo pamac install kitty  --no-confirm
echo "Install Obsidian (y/n)?"
read obsidian
[ "$obsidian" = "y" ] && sudo pamac install obsidian --no-confirm 
echo "Install Docker (y/n)?"
read docker
[ "$docker" = "y" ] && sudo pamac install docker-desktop --no-confirm
echo "Install Discord (y/n)?"
read discord
[ "$discord" = "y" ] && sudo pamac install discord --no-confirm 
echo "Install Firacode Font (y/n)?"
read firacode
if [[ "$firacode" = "y" ]]; then
	sudo pamac install ttf-firacode-nerd --no-confirm
	sudo pamac install ttf-firacode --no-confirm
fi
echo "Install ASDF (Runtime versions manager) (y/n)?"
read asdf
[ "$asdf" = "y" ] && sudo pamac install asdf-vm --no-confirm 
echo "Install ASDF NodeJS Runtime (y/n)?"
read asdfnode
if [[ "$asdfnode" = "y" ]]; then
	asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
	asdf install nodejs latest
	asdf global nodejs latest
fi
echo "Install ripgrep (line-search tool (required for telescope on nvim) (y/n)"
read ripgrep
[ "$ripgrep" = "y" ] && sudo pacman -S ripgrep --needed --noconfirm
echo "Install Rust via Rustup (y/n)"
read rustup
[ "$rustup" = "y" ] && sudo pacman -S rustup --needed --noconfirm 

# NeoVim Configuration
# Language Server installs
echo "Select Language Servers to Install"
echo "Typescript (y/n)"
read lsp_typescript
echo "Rust-Analyzer (y/n)"
read lsp_rust
[ "$lsp_typescript" = "y" ] && npm i -G typescript typescript-language-server
if [[ "$lsp_rust" = "y" ]]; then
	rustup default stable
	rustup component add rust-analyzer
    # Symlink rust-anayzer to path
    sudo ln -s $(rustup which rust-analyzer ) /usr/local/bin/rust-analyzer
fi

# Cleanup
sudo pacman -Qtdq | sudo pacman -Rns -
