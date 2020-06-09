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

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'crusoexia/vim-monokai'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
call plug#end()

let mapleader = " "
let g:netrw_browse_split = 2
nnoremap <C-h> <C-w>h<CR>
nnoremap <C-j> <C-w>j<CR>
nnoremap <C-k> <C-w>k<CR>
nnoremap <C-l> <C-w>l<CR>

nnoremap <leader>t :NERDTreeToggle .<CR>

nnoremap <leader>n :tabn<CR> 
nnoremap <leader>p :tabp<CR>

nnoremap <C-z> :UndotreeToggle<CR>

nnoremap <C-c> <C-w>v<CR>
nnoremap <C-x> :bd<CR>

nnoremap <esc><esc> :let @/=""<enter>
