" Enable Pathogen (enables packages located in ~/.vim/bundle)
execute pathogen#infect()
" Enable syntax highlighting
syntax enable
" Color Scheme
set background=dark
colorscheme solarized 
" Line Number
set number
" Start NERDTree with vim if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Whitespace characters
set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,space:.
" Whitespace characters color
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
hi SpecialKey ctermfg=238 guifg=#262626 ctermbg=NONE
" Automatic indentation
filetype indent plugin on
" Use tabs when pressing tabs on python files
augroup python_files
	autocmd!
	autocmd FileType python setlocal noexpandtab
	autocmd FileType python set tabstop=4
	autocmd FileType python set shiftwidth=4
augroup END
