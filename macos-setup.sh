# Install Homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add /opt/homebrew/bin to PATH for Apple Silicon brew packages
# [ -d "/opt/homebrew" ] && echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/gman/.zprofile\n
# [ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)


# Interactive Cask Installs
echo "Install Firefox (y/n)?"
read firefox
[ "$firefox" = "y" ] && brew install --cask firefox
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
