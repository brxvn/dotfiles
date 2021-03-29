source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/templates/temp.vim


" kite
let g:kite_suppported_languages = ['javascript', 'python']
let g:kite_tab_complete=1
nmap <silent> <buffer> gK <Plug>(kite-docs)
let g:kite_documentation_continual=1
" CoC
autocmd FileType python let b:coc_suggest_disbale = 1
autocmd FileType javascript let b:coc_suggest_disbale = 1
autocmd FileType scss setl iskeyword+=@-Q 


let g:NERDTreeMinimalUI = 1  " Hide help text
let NERDTreeQuitOnOpen = 1 " Cerrar NerdTree cada que abra un archivo

"set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
"set laststatus=2  " always display the status line
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'minimalist'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
" Airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⎇ ' 

set completeopt-=menu
set completeopt+=menuone   " Show the completions UI even with only 1 item
set completeopt-=longest   " Don't insert the longest common text
set completeopt-=preview   " Hide the documentation preview window
set completeopt+=noinsert  " Don't insert text automatically
set completeopt-=noselect  " Highlight the first completion automatically
