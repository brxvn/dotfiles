 " auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Cargamos plugins que podemos ocupar después
call plug#begin('~/.config/nvim/autoload/plugged')

" themes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" IDE
    "Navegar por el archvio 
	Plug 'easymotion/vim-easymotion'
    " Tabs
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Some Fonts for better looking
    Plug 'powerline/powerline'
    Plug 'powerline/powerline-fonts'
    Plug 'tpope/vim-fugitive'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    Plug 'shmup/vim-sql-syntax'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
     "Autocomplete  
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
     " Terminal inside
     Plug 'voldikss/vim-floaterm'
call plug#end()

