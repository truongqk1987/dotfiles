" Setup vim-airline to show branch name
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#hunks#coc_git = 1
let g:airline#extensions#ale#enabled = 1

" Setup NERDTree
let NERDTreeShowHidden=1
nnoremap <C-t> :NERDTreeToggle<CR>

" Map keys
inoremap jj <ESC>
"
" vsplit and split moving
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Fzf
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
nnoremap <silent> <C-f> :Files<CR>

