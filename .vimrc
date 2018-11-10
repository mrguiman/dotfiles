set nocompatible        " be iMproved, required (Vundle)
filetype off            " required (Vundle)
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'sheerun/vim-polyglot'
Plugin 'wincent/command-t'

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
" Install Go Binaries for vim-go to work properly
autocmd VimEnter * GoInstallBinaries

" Whitespace characters
set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,space:.
" Whitespace characters color
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
hi SpecialKey ctermfg=238 guifg=#262626 ctermbg=NONE

" Backspace over everything
set backspace=indent,eol,start

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
augroup END

" Default template for python files
augroup python
	au BufNewFile *.py 0r ~/vim/skeleton.py
augroup end

" Cut / Copy from Visual Mode to system clipboard
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
nmap <silent> <C-p> <Plug>(CommandT)

" YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_auto_trigger = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_server_python_interpreter = '/usr/bin/python'

" Disable polyglot on go files (conflicts with vim-go)
" vim-go must be installed before polyglot
let g:polyglot_disabled = ['go']
