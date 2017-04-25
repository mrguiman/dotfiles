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

4. Better Javascript Syntax Highlighting
```
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
```

5. Syntax Highlighting for JSX
```
git clone https://github.com/mxw/vim-jsx.git ~/.vim/bundle/vim-jsx
```

# Notes
* .zshrc defines an alias to run python3 when typing python


# Misc Shortcuts
These are shortcuts that I once (or regularly) search for on the web and I need for my workflow. Not exhaustive.

|                       | NERDTree | VIM     | iTerm2       |
|-----------------------|----------|---------|--------------|
| Add File              | m a      |         |              |
| Copy File             | m c      |         |              |
| Delete File           | m d      |         |              |
| Move File             | m m      |         |              |
| New Horizontal Panel  |          | :sp     | SHIFT+CMD+d  |
| New Vertical Panel    |          | :vsp    | CMD+d        |
| Close Panel           |          | :q      | CMD+w        |
| Cycle Panels          |          | ctrl+ww |              |
| Switch to Left Panel  |          | ctrl+wh | CMD+[        |
| Switch to Right Panel |          | ctrl+wl | CMD+]        |
| Newline above         |          |         | O (Normal)   |
