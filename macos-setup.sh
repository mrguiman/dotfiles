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
[ "$firefox" = "y" ] && brew install --cask firefox
echo "Install VSCode (y/n)?"
read vscode
[ "$vscode" = "y" ] && brew install --cask visual-studio-code
echo "Install iTerm2 (y/n)?"
read iterm2
[ "$iterm2" = "y" ] && brew install --cask iterm2
echo "Install Obsidian (y/n)?"
read obsidian
[ "$obsidian" = "y" ] && brew install --cask obsidian
echo "Install Docker (y/n)?"
read docker
[ "$docker" = "y" ] && brew install --cask docker
echo "Install Surfshark (y/n)?"
read surfshark
[ "$surfshark" = "y" ] && brew install --cask surfshark
echo "Install Notion (y/n)?"
read notion
[ "$notion" = "y" ] && brew install --cask notion
echo "Install Slack (y/n)?"
read slack
[ "$slack" = "y" ] && brew install --cask slack
echo "Install Discord (y/n)?"
read discord
[ "$discord" = "y" ] && brew install --cask discord
echo "Install Spectacle (y/n)?"
read spectacle
[ "$spectacle" = "y" ] && brew install --cask spectacle
echo "Install Firacode Font (y/n)?"
read firacode
if [[ "$firacode" = "y" ]]; then
  brew tap homebrew/cask-fonts
  brew install --cask font-fira-code
fi
echo "Install Bat (superpowered cat) (y/n)?"
read bat
[ "$bat" = "y" ] && brew install bat 
echo "Install Fig (terminal autocomplete) (y/n)?"
read fig
[ "$fig" = "y" ] && brew install --cask fig 

# Vim Configuration
brew install vim # install vim through brew to get ruby support
git clone https://github.com/MrGuiMan/dotfiles
(cd dotfiles && cp .vimrc ~/)
mkdir -p .vim/colors
(cd dotfiles && cp .vim/colors/* ~/.vim/colors/)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall qall
cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t
ruby extconf.rb
make
