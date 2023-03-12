# Install Homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add /opt/homebrew/bin to PATH for Apple Silicon brew packages
# [ -d "/opt/homebrew" ] && echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/gman/.zprofile\n
# [ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)

if [[ `uname -m` == 'arm64' ]]; then
  softwareupdate --install-rosetta
fi

# Interactive Cask Installs
echo "Install Firefox (y/n)?"
read firefox
echo "Install VSCode (y/n)?"
read vscode
echo "Install iTerm2 (y/n)?"
read iterm2
echo "Install Obsidian (y/n)?"
read obsidian
echo "Install Docker (y/n)?"
read docker
echo "Install Notion (y/n)?"
read notion
echo "Install Slack (y/n)?"
read slack
echo "Install Discord (y/n)?"
read discord
echo "Install Spectacle (y/n)?"
read spectacle
echo "Install Firacode Font (y/n)?"
read firacode
echo "Install Bat (superpowered cat) (y/n)?"
read bat
echo "Install Fig (terminal autocomplete) (y/n)?"
read fig
echo "Install ASDF (Runtime versions manager) (y/n)?"
read asdf
echo "Install ASDF NodeJS Runtime (y/n)?"
read asdfnode
echo "Install ripgrep (line-search tool (required for telescope on nvim)"
read ripgrep
echo "Install Rust via Rustup (y/n)"
read rustup

[ "$firefox" = "y" ] && brew install --cask firefox
[ "$vscode" = "y" ] && brew install --cask visual-studio-code
[ "$iterm2" = "y" ] && brew install --cask iterm2
[ "$obsidian" = "y" ] && brew install --cask obsidian
[ "$docker" = "y" ] && brew install --cask docker
[ "$notion" = "y" ] && brew install --cask notion
[ "$slack" = "y" ] && brew install --cask slack
[ "$discord" = "y" ] && brew install --cask discord
[ "$spectacle" = "y" ] && brew install --cask spectacle
if [[ "$firacode" = "y" ]]; then
  brew tap homebrew/cask-fonts
  brew install --cask font-fira-code-nerd-font
fi
[ "$bat" = "y" ] && brew install bat 
[ "$fig" = "y" ] && brew install --cask fig 
[ "$asdf" = "y" ] && brew install asdf
[ "$asdfnode" = "y" ] && asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
[ "$ripgrep" = "y" && brew install ripgrep
[ "$rustup" = "y"] && brew install rustup-init

# NeoVim Configuration
brew install neovim # install vim through brew to get ruby support
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Language Server installs
echo "Select Language Servers to Install"
echo "Typescript (y/n)"
read lsp-typescript
echo "Rust-Analyzer (y/n)"
read lsp-rust

["$lsp-typescript" = "y"] && npm i -G typescript typescript-language-server
["$lsp-rust" = "y"] && rustup component add rust-analyzer  
# Symlink rust-anayzer to path
sudo ln -s $(rustup which rust-analyzer ) /usr/local/bin/rust-analyzer