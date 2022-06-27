set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'davidhalter/jedi-vim'
Plugin 'chrisbra/csv.vim'
Plugin 'derekwyatt/vim-scala'


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set foldmethod=indent |
set foldlevel=99
nnoremap <space> za
set bs=2
syntax on


au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent | 
    \ set fileformat=unix



set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:python_pep8_indent_multiline_string=-2
let g:python_pep8_indent_hang_closing = 1
let g:syntastic_python_checkers = ['pylint']
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:csv_delim_test = ',|\t'
set guifont=Inconsolata\ for\ Powerline:h15
set encoding=utf8
set laststatus=2
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd FileType python setlocal completeopt-=preview
:filetype indent on
:set ft=py
:set smartindent

"debugger pudb
:map <F5> :term python3 -m pudb %<CR>
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
