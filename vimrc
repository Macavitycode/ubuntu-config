syntax on
colorscheme monokai

hi Normal guibg=NONE ctermbg=NONE

set noerrorbells
set tabstop=4 softtabstop=4 expandtab
set shiftwidth=4
set smartindent
set number relativenumber
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'crusoexia/vim-monokai'
call plug#end()

nnoremap <esc><esc> :let @/=""<enter>
