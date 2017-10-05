"Disable YCM
"let g:loaded_youcompleteme = 1

"Load vim default settings
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

colorscheme smoothgrape
let g:EclimCompletionMethod = 'omnifunc'
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set history=50		" keep 50 lines of command line history
set ruler	    	" show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching



set clipboard=unnamedplus
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set laststatus=2

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

syntax on

set ignorecase
set smartcase
let mapleader=","
set number

cmap w!! w !sudo tee > /dev/null %


call plug#begin('~/.vim/plugged')
    "Plug 'SirVer/ultisnips'
        "let g:UltiSnipsExpandTrigger="<c-b>"
        "let g:UltiSnipsJumpForwardTrigger="<c-b>"
    "Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'
        let g:syntastic_cpp_compiler_options = ' -std=c++11'
    Plug 'rdnetto/YCM-Generator',{'branch': 'stable'}
    Plug 'sheerun/vim-polyglot'
    Plug 'airblade/vim-gitgutter'
    Plug 'Yggdroot/indentLine'
        let g:indentLine_char="¦"
        let g:indentLine_color_term = 239
    Plug 'Raimondi/delimitMate'
    Plug 'vim-airline/vim-airline'
        let g:airline_powerline_fonts = 1
        let g:airline#extensions#hunks#non_zero_only = 1
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#show_buffers = 0
        let g:airline_theme='distinguished'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'Valloric/YouCompleteMe'
    Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}
call plug#end()

