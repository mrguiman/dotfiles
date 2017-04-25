# Screenshot
![Screenshot](http://i.imgur.com/Wje1Fbg.png)

# iTerm2

* Install Oh my ZSH
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

* Install additional fonts for zsh agnoster theme
https://github.com/powerline/fonts

# VIM

1. Install vim-pathogen
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

2. Install solarized with pathogen
```
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
```

3. Install NERDTree with pathogen
```
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
```

# Notes
* .zshrc defines an alias to run python3 when typing python
