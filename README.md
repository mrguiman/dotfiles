# Screenshot
![Screenshot](http://i.imgur.com/Wje1Fbg.png)

# iTerm2

* Install Oh my ZSH
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

* Install additional fonts for zsh
```
https://github.com/powerline/fonts
```

* Powerlevel9k
```
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

* .itermcolors Color Sheme included (based on Atom's OneDark)

# VIM

1. Install vim-pathogen
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

2. Install NERDTree with pathogen
```
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
```

3. Get onedark.vim and place it inside ~/.vim/colors/
```
https://github.com/joshdick/onedark.vim/
```

4. Better Javascript Syntax Highlighting
```
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
```

5. Syntax Highlighting for JSX
```
git clone https://github.com/mxw/vim-jsx.git ~/.vim/bundle/vim-jsx
```
