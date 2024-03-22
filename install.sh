# ----
# This script assumes you've already installed hyprland
# ----

# Synchronise repositories and update packages 
sudo pacman -Syu

# General stuff
sudo pacman -S git zsh kitty dunst thunar gthumb fastfetch wl-clipboard otf-font-awesome --needed --noconfirm

# Screenshots and Screen sharing
sudo pacman -S grim xdg-desktop-portal-hyprland xdg-desktop-portal qt5-wayland qt6-wayland --needed --noconfirm

# Backlighting
sudo pacman -S brightnessctl --needed --noconfirm

# Wifi and Bluetooth
sudo pacman -S networkmanager blueman --needed --noconfirm

# Audio 
sudo pacman -S pipewire wireplumber pipewire-pulse pavucontrol --needed --noconfirm
systemctl --user --now enable wireplumber
systemctl --user --now enable pipewire-pulse.service

# Power Management
sudo pacman -S htop powertop --needed --noconfirm

# Styling
sudo pacman -S nwg-look swaybg waypaper

# Interactive Installs
echo "Install Waybar (y/n)?"
read waybar 
[ "$waybar" = "y" ] && sudo pacman -S waybar --needed --noconfirm
echo "Install Neovim (y/n)?"
read neovim 
[ "$neovim" = "y" ] && sudo pacman -S neovim --needed --noconfirm
echo "Install Bat (superpowered cat) (y/n)?"
read bat
[ "$bat" = "y" ] && sudo pacman -S bat --needed --noconfirm
echo "Install Firefox (y/n)?"
read firefox
[ "$firefox" = "y" ] && sudo pacman -S firefox --needed --noconfirm
echo "Install Firacode Font (y/n)?"
read firacode
[ "$firacode" = "y" ] && sudo pacman -S ttf-firacode-nerd --needed --noconfirm
echo "Install ripgrep (line-search tool (required for telescope on nvim) (y/n)"
read ripgrep
[ "$ripgrep" = "y" ] && sudo pacman -S ripgrep --needed --noconfirm
echo "Install Rust via Rustup (y/n)"
read rustup
[ "$rustup" = "y" ] && sudo pacman -S rustup --needed --noconfirm 


# AUR and Other Stuff
echo "Install SWWW and Waypaper ?"
read swwwaypaper
if [[ "$swwwaypaper" = "y" ]]; then
    mkdir ~/builds && cd ~/builds
    git clone https://github.com/LGFae/swww.git
    (cd swww && cargo build --release && cp target/release/swww target/release/swww-daemon ~/.local/bin)

    git clone https://aur.archlinux.org/waypaper-git.git
    (cd waypaper-git && makepkg -src && sudo pacman -U waypaper-git-*)
fi

echo "Install ASDF NodeJS Runtime (y/n)?"
read asdfnode
if [[ "$asdfnode" = "y" ]]; then
	asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
	asdf install nodejs latest
	asdf global nodejs latest
fi
# echo "Install Obsidian (y/n)?"
# read obsidian
# [ "$obsidian" = "y" ] && sudo pamac install obsidian --noconfirm 
# echo "Install Docker (y/n)?"
# read docker
# [ "$docker" = "y" ] && sudo pamac install docker-desktop --noconfirm
# echo "Install Discord (y/n)?"
# read discord
# [ "$discord" = "y" ] && sudo pamac install discord --noconfirm 

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
    rustup update stable
fi

# Cleanup
sudo pacman -Qtdq | sudo pacman -Rns -
