let mapleader="\<Space>"

syntax enable							" resaltar syntax
set nowrap 								" Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set relativenumber
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
