" Enable Pathogen (enables packages located in ~/.vim/bundle)
execute pathogen#infect()
" Enable syntax highlighting
syntax enable
" Color Scheme
set background=dark
colorscheme solarized 
" Line Number
set number
" Automatic indentation
filetype indent plugin on
" Whitespace characters
set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,space:.
" Whitespace characters color
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
hi SpecialKey ctermfg=238 guifg=#262626 ctermbg=NONE
