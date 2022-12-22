call plug#begin('~/.config/nvim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'olimorris/onedarkpro.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Utilities
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'

" Completion / linters / formatters
Plug 'neoclide/coc.nvim',  {'branch': 'release'}
Plug 'plasticboy/vim-markdown'

" Git
Plug 'airblade/vim-gitgutter'

call plug#end()

colorscheme onedark 

let g:coc_global_extensions = [
  \ 'coc-ultisnips',
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-yaml',
  \ 'coc-highlight',
  \ 'coc-eslint',
  \ 'coc-git',
  \ 'coc-prettier',
  \ 'coc-flutter',
  \ 'coc-angular',
  \ 'coc-pyright',
  \ ]
