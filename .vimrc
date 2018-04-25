set nocompatible        " be iMproved, required (Vundle)
filetype off            " required (Vundle)
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'elmcast/elm-vim'
Plugin 'avh4/elm-format'
Plugin 'sheerun/vim-polyglot'

" Disable polyglot elm plugin to run diretly on elmcast/elm-vim
let g:polyglot_disabled = ['elm']

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Enable syntax highlighting
syntax enable
" Color Scheme
set background=dark
let g:onedark_termcolors=16
colorscheme onedarkafterglow
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
" Enable JSX syntax highlighting for .js files
let g:jsx_ext_required = 0

" Define indentation per file type
augroup indentation
	autocmd!
	autocmd FileType python setlocal expandtab " Insert spaces for tabs
	autocmd FileType python set tabstop=4 " Number of visual spaces per tab
	autocmd FileType python set shiftwidth=4 " Number of spaces vim uses when indenting
	autocmd FileType javascript setlocal expandtab
	autocmd FileType javascript set tabstop=4
	autocmd FileType javascript set shiftwidth=4
	autocmd FileType html setlocal expandtab
	autocmd FileType html set tabstop=4
	autocmd FileType html set shiftwidth=4
	autocmd FileType scss setlocal expandtab
	autocmd FileType scss set tabstop=2
	autocmd FileType scss set shiftwidth=2
	autocmd FileType elm setlocal expandtab
	autocmd Filetype elm set tabstop=4
	autocmd Filetype elm set shiftwidth=4
augroup END
augroup python
	au BufNewFile *.py 0r ~/vim/skeleton.py
augroup end

" Cut / Copy from Visual Mode to system clipboard
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
