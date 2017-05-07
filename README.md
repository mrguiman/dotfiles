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

6. Autocompletion for python with jedi-vim
```
git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim
cd ~/.vim/bundle/jedi-vim
git submodule update --init
```

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
| Reindent File         |          | gg=G    | O (Normal)   |
