
"Comandos para easymotion
nmap <Leader>s <Plug>(easymotion-s2)
"CR es enter
nmap <Leader>nt :NERDTreeFind<CR>  

" Atajos
"
  nmap <Leader>w :w<CR>
  nmap <Leader>q :wq<CR>

" Movereme entre buffers
nmap <Leader>b :bn<CR>
" Cerrar buffer actual
nmap <Leader>d :bd<CR> 

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Use <c-space> to trigger completion
if &filetype == "javascript" || &filetype == "python"  
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

 " Configuration example
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F6>'
